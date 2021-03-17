# treasure-workflow-actions

GitHub Actions for Treasure Workflow, for performing a task to push a project to Treasure Workflow with digdag client.

## Input 

- `TD_MASTER_APIKEY`: Treasure Data Master APIKEY (required) (secrets)
- `TD_WF_API_ENDPOINT`: Treasure Workflow API Endpoint (optional)
    - US region (default): https://api-workflow.treasuredata.com
    - Tokyo region: https://api-workflow.treasuredata.co.jp
    - EU01 region: https://api-workflow.eu01.treasuredata.com
    - AP02 region: https://api-workflow.ap02.treasuredata.com
- `TD_WF_PROJECT_NAME`: Treasure Workflow Project Name (required)

## Usage

1 - Go "Settings" > "Secrets", and configure `TD_MASTER_APIKEY` with your master apikey.

2 - Configure this action in your github actions:

```
- uses: actions/checkout@v2
- name: "td wf push"
    uses: toru-takahashi/tdw-actions@master
    with:
        td_master_apikey: ${{ secrets.td_master_apikey }}
        td_wf_project_name: your_workflow_name
```
