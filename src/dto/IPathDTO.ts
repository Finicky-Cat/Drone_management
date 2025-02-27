interface PathBetweenFloors {
  element: string;
  floorSource: string;
  floorDestination: string;
}


export interface IPathDTO {
  buildings: string[];
  paths: PathBetweenFloors[];
  pathInside?: { line: string, column: string }[][];
}

