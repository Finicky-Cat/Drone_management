import { Inject, Service } from 'typedi';
import IElevatorController from './IControllers/IElevatorController';
import config from '../../config';
import { NextFunction, Request, Response } from 'express';
import { Result } from '../core/logic/Result';
import { IElevatorDTO } from '../dto/IElevatorDTO';
import IElevatorService from '../services/IServices/IElevatorService';

@Service()
export default class ElevatorController implements IElevatorController {
  constructor(@Inject(config.services.elevator.name) private elevatorServiceInstance: IElevatorService) {}

  public async createElevator(req: Request, res: Response, next: NextFunction) {
    try {
      // @ts-ignore
      if (req.auth.user.role.name !== 'campus manager') {
        return res
          .status(401)
          .json('Não tem permissões para aceder a este recurso')
          .send();
      }
      const elevatorOrError = (await this.elevatorServiceInstance.createElevator(req.body as IElevatorDTO)) as Result<
        IElevatorDTO
      >;
      if (elevatorOrError.isFailure) {
        return res
          .status(402)
          .json({ error: elevatorOrError.error })
          .send();
      }
      const elevatorDTO = elevatorOrError.getValue();
      return res.status(201).json(elevatorDTO);
    } catch (error) {
      return next(error);
    }
  }

  public async listElevator(req: Request, res: Response, next: NextFunction) {
    try {
      // @ts-ignore
      if (req.auth.user.role.name !== 'campus manager' && req.auth.user.role.name !== 'user' && req.auth.user.role.name !== 'task manager') {
        return res
          .status(401)
          .json('Não tem permissões para aceder a este recurso')
          .send();
      }
      const buildingDesignation = req.query.buildingDesignation as string;
      const listOrError = (await this.elevatorServiceInstance.listElevator(buildingDesignation)) as Result<
        IElevatorDTO[]
      >;

      if (listOrError.isFailure) {
        return res.status(402).json({ error: listOrError.error });
      }

      const elevators = listOrError.getValue();
      return res.status(200).json(elevators);
    } catch (error) {
      return next(error);
    }
  }

  public async updateElevator(req: Request, res: Response, next: NextFunction) {
    try {
      // @ts-ignore
      if (req.auth.user.role.name !== 'campus manager') {
        return res
          .status(401)
          .json('Não tem permissões para aceder a este recurso')
          .send();
      }
      const elevatorOrError = (await this.elevatorServiceInstance.updateElevator(req.body as IElevatorDTO)) as Result<
        IElevatorDTO
      >;
      if (elevatorOrError.isFailure) {
        return res
          .status(402)
          .json({ error: elevatorOrError.error })
          .send();
      }
      const elevatorDTO = elevatorOrError.getValue();
      return res.status(201).json(elevatorDTO);
    } catch (error) {
      return next(error);
    }
  }
  public async replaceElevator(req: Request, res: Response, next: NextFunction) {
    try {
      // @ts-ignore
      if (req.auth.user.role.name !== 'campus manager') {
        return res
          .status(401)
          .json('Não tem permissões para aceder a este recurso')
          .send();
      }
      const elevatorOrError = (await this.elevatorServiceInstance.replaceElevator(req.body as IElevatorDTO)) as Result<
        IElevatorDTO
      >;
      if (elevatorOrError.isFailure) {
        return res
          .status(402)
          .json({ error: elevatorOrError.error })
          .send();
      }
      const elevatorDTO = elevatorOrError.getValue();
      return res.status(201).json(elevatorDTO);
    } catch (error) {
      return next(error);
    }
  }
}
