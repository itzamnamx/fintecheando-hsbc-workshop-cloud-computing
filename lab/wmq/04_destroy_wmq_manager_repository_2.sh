#Removing Repository 2 from the cluster
 
echo ALTER CHANNEL(TO.TMXREPO02.TMX01) CLUSTER(' ') | runmqsc TMXREPO02
echo ALTER CHANNEL(TO.TMXREPO01.TMX01) CLUSTER(' ') | runmqsc TMXREPO02
