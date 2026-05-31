**Systems and tools:**
- **Google Cloud** — project, billing, IAM permissions
- **BigQuery** — dataset, partitioned table, storage billing model, partition expiration
- **Python/pip** — package management, virtual environment
- **bq-env** — virtual environment housing all packages
- **google-cloud-bigquery** — Python BQ client
- **google-cloud-bigquery-storage** — fast transport layer
- **dbt-bigquery** — dbt core + BQ adapter
- **Jupyter** — notebook server, kernel registration
- **VSC** — editor, Python interpreter config, terminal
- **gcloud CLI** — authentication, project config, application default credentials
- **Git** — version control, local repo
- **GitHub** — remote repo, PAT authentication
- **Claude Code** — AI coding assistant in VSC

**Connections made:**
- Python ↔ BigQuery (via oauth + application default credentials)
- dbt ↔ BigQuery (via profiles.yml + oauth)
- dbt ↔ project files (via dbt_project.yml)
- VSC ↔ bq-env (Python interpreter config)
- VSC ↔ Jupyter server (kernel URL)
- Local git ↔ GitHub (PAT token)
- Claude Code ↔ VSC ↔ bq-env

**Data flow:**
Public BQ dataset → partitioned raw table → dbt staging → dbt intermediate → dbt marts → (Python notebooks → dashboard)