local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-diffmerge') {
  settings+: {
    description: "",
    name: "Eclipse Diff/Merge ",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('org.eclipse.emf.diffmerge.coevolution') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('org.eclipse.emf.diffmerge.core') {
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('org.eclipse.emf.diffmerge.patch') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      description: "DEPRECATED/ARCHIVED",
      homepage: "",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('org.eclipse.emf.diffmerge.patterns') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "0.11.x",
      delete_branch_on_merge: false,
      web_commit_signoff_required: false,
    },
  ],
}
