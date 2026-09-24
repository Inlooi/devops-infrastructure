<<<<<<< HEAD
This is README list
=======

# Infrastructure

DevOps infrastructure with Devops-repository with basic infrastructure: Terraform, Ansible, Kubernetes, Docker and CI/CD

## Структура

```
infrastructure/
├── terraform/         
│   ├── main.tf
│   └── variables.tf
├── ansible/           
│   └── playbook.yml
├── kubernetes/          
│   ├── deployment.yaml
│   └── service.yaml
├── docker/               
│  └── Dockerfile
├── monitoring/           
│   └── prometheus.yml
└── .github/workflows/    
    └── ci.yml
```

## Terraform

Базовая инфраструктура AWS: EC2-инстанс, переменные для региона, окружения и типа инстанса.

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

## Ansible

Провижининг серверов: установка Docker, создание пользователя приложения, настройка директорий.

```bash
ansible-playbook -i inventory ansible/playbook.yml
```

## Docker

Сборка и запуск образа приложения.

```bash
docker build -t infra-app -f docker/Dockerfile .
docker run -p 8000:8000 infra-app
```

## Kubernetes

Деплой приложения в кластер.

```bash
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

## Мониторинг

Prometheus собирает метрики с приложения и подов кластера — конфиг в `monitoring/prometheus.yml`.

## CI/CD

GitHub Actions (`.github/workflows/ci.yml`) на каждый push/PR в `main`:
- валидирует Terraform
- линтит Kubernetes-манифесты
- собирает Docker-образ
- линтит Ansible playbook

## Деплой (порядок действий)

1. `terraform apply` — поднять облачные ресурсы
2. `ansible-playbook` — настроить серверы
3. `docker build` + push образа в registry
4. `kubectl apply` — задеплоить в кластер
5. Проверить метрики в Prometheus

## Статус

🟢 Полный набор инфраструктуры готов: Terraform, Ansible, Kubernetes, Docker, мониторинг, CI/CD.
>>>>>>> 3e4fdad (Updated README.md list)
