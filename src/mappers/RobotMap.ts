import { Mapper } from '../core/infra/Mapper';
import { Robot } from '../domain/robot/robot';
import { IRobotDTO } from '../dto/IRobotDTO';
import { RobotNickName } from '../domain/robot/robotNickName';
import { RobotSerialNr } from '../domain/robot/robotSerialNr';
import { RobotDescription } from '../domain/robot/robotDescription';
import { Container } from 'typedi';
import { UniqueEntityID } from '../core/domain/UniqueEntityID';
import RobotTypeRepo from '../repos/robotTypeRepo';
import { RobotCode } from '../domain/robot/robotCode';

export class RobotMap extends Mapper<Robot> {
  public static toDTO(robot: Robot) {
    return {
      id: robot.id.toString(),
      robotCode: robot.robotCode.value,
      nickName: robot.nickName.value,
      robotType: robot.robotType.name.value,
      serialNr: robot.serialNr.value,
      description: robot.description.value,
      state: robot.state.toString(),
    } as IRobotDTO;
  }

  public static async toDomain(raw: any) {
    const serialNr = RobotSerialNr.create(raw.serialNr);
    const nickName = RobotNickName.create(raw.nickName);
    const description = RobotDescription.create(raw.description);
    const robotCode = RobotCode.create(raw.robotCode);
    const repo = Container.get(RobotTypeRepo);
    const robotType = await repo.findById(raw.robotType);
    const state = raw.state === 'true';

    const robotOrError = Robot.create(
      {
        robotCode: robotCode.getValue(),
        nickName: nickName.getValue(),
        serialNr: serialNr.getValue(),
        description: description.getValue(),
        robotType: robotType,
        state: state,
      },
      new UniqueEntityID(raw.domainId),
    );

    robotOrError.isFailure ? console.log(robotOrError.error) : '';

    return robotOrError.isSuccess ? robotOrError.getValue() : null;
  }

  public static toPersistence(robot: Robot) {
    const raw = {
      domainId: robot.id.toString(),
      robotCode: robot.robotCode.value,
      nickName: robot.nickName.value,
      serialNr: robot.serialNr.value,
      description: robot.description.value,
      robotType: robot.robotType.id.toValue(),
      state: robot.state.toString(),
    };
    return raw;
  }
}
