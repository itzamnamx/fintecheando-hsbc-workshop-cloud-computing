# Script for creating the main repository of ibm wmq

#Creating QMGR Repository 1
crtmqm -u SYSTEM.TMXREPO01.DEAD.LETTER.QUEUE TMXREPO01

strmqm TMXREPO01
runmqsc TMXREPO01

ALTER QMGR REPOS(TMXCLUS01)

DEFINE CHANNEL(TO.TMXREPO01.TMX01) +
	CHLTYPE(CLUSRCVR) +
	TRPTYPE(TCP) +
	CONNAME('fintecheando-wmq-repo-01.bitnamiapp.com(15010)') +
	CLUSTER(TMXCLUS01) +
	DESCR('CLUSRCVR TMXREPO01')
	
DEFINE CHANNEL(TO.TMXREPO02.TMX01) +
	CHLTYPE(CLUSSDR) +
	TRPTYPE(TCP) +
	CONNAME('fintecheando-wmq-repo-02.bitnamiapp.com(15020)') +
	CLUSTER(CLUSTERNAME) +
	DESCR('CLUSSDR TMXREPO02')

end
