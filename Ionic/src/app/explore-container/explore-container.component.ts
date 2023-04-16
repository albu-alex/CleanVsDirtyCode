import { Component, OnInit, Input } from '@angular/core';
import { CleanCodeService } from '../services/clean-code.service';
import { DirtyCodeService } from '../services/dirty-code.service';

@Component({
  selector: 'app-explore-container',
  templateUrl: './explore-container.component.html',
  styleUrls: ['./explore-container.component.scss'],
})
export class ExploreContainerComponent implements OnInit {
  @Input() name: string;

  public cleanCodeTime = 0.0;
  public dirtyCodeTime = 0.0;

  constructor(private cleanCodeService: CleanCodeService, private dirtyCodeService: DirtyCodeService) { }

  ngOnInit() { }

  public computeCleanCodeTime() {
    const timePassed = this.cleanCodeService.getTimeForTotalArea();
    this.cleanCodeTime = timePassed;
  }

  public computeDirtyCodeTime() {
    const timePassed = this.dirtyCodeService.getTimeForTotalArea();
    this.dirtyCodeTime = timePassed;
  }
}
