# TRANSFORMATION DEPENDENCY PROPAGATION

When transformation changes an authoritative attribute:

1. update transformation record
2. update state
3. identify dependent domains
4. update only affected records
5. regenerate affected outputs
6. revalidate
7. approve
8. lock
