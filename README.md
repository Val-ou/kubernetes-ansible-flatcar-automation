# Automatisation du déploiement de Kubernetes sur Flatcar container Linux

Dépôt pour un ensembles de script, manifests et test pour l'automatisation et l'exploitation d'un cluster Kubernetes.

Les technologies employées sont :
- Distribution : Flatcar container Linux
- Kubernetes : cluster kubeadm
- Haute disponibilitée du control plane : Kube-vip
- CNI : Kube-router
- Load balancer : MetalLB

Élémentes à implémenter :
- [x] Déploiment du cluster
- [x] Haute disponiblité
- [x] Load balancer
- [ ] Mise à jours de Kubernetes
- [ ] Ingress / Gateway API (Istio / service mesh ?)
- [ ] Monitoring
- [ ] Storage provider
