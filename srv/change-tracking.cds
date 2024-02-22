using {AdminService} from './admin-service';

annotate AdminService.Books with {
    title  @changelog;
    author @changelog: [author.name];
}
