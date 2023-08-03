.class public Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
.super Ljava/lang/Object;
.source "RetrofitUrlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;
    }
.end annotation


# static fields
.field private static final DEPENDENCY_OKHTTP:Z

.field private static final DOMAIN_NAME:Ljava/lang/String; = "Domain-Name"

.field public static final DOMAIN_NAME_HEADER:Ljava/lang/String; = "Domain-Name: "

.field private static final GLOBAL_DOMAIN_NAME:Ljava/lang/String; = "me.jessyan.retrofiturlmanager.globalDomainName"

.field public static final IDENTIFICATION_IGNORE:Ljava/lang/String; = "#url_ignore"

.field public static final IDENTIFICATION_PATH_SIZE:Ljava/lang/String; = "#baseurl_path_size="

.field private static final TAG:Ljava/lang/String; = "RetrofitUrlManager"


# instance fields
.field private baseUrl:Lokhttp3/HttpUrl;

.field private debug:Z

.field private isRun:Z

.field private final mDomainNameHub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/HttpUrl;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterceptor:Lokhttp3/Interceptor;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/jessyan/retrofiturlmanager/onUrlChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

.field private pathSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "okhttp3.OkHttpClient"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sput-boolean v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->DEPENDENCY_OKHTTP:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    .line 7
    sget-boolean v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->DEPENDENCY_OKHTTP:Z

    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;

    invoke-direct {v0}, Lme/jessyan/retrofiturlmanager/parser/DefaultUrlParser;-><init>()V

    .line 9
    invoke-interface {v0, p0}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->init(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    .line 10
    invoke-virtual {p0, v0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->setUrlParser(Lme/jessyan/retrofiturlmanager/parser/UrlParser;)V

    .line 11
    new-instance v0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;

    invoke-direct {v0, p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;-><init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;)V

    iput-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mInterceptor:Lokhttp3/Interceptor;

    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be dependency Okhttp"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;-><init>()V

    return-void
.end method

.method public static final getInstance()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;
    .locals 1

    invoke-static {}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager$RetrofitUrlManagerHolder;->access$100()Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;

    move-result-object v0

    return-object v0
.end method

.method private listenersToArray()[Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;->onUrlChangeBefore(Lokhttp3/HttpUrl;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private obtainDomainNameFromHeaders(Lokhttp3/Request;)Ljava/lang/String;
    .locals 3

    const-string v0, "Domain-Name"

    .line 1
    invoke-virtual {p1, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only one Domain-Name in the headers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private pruneIdentification(Lokhttp3/Request$Builder;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4

    const-string v0, "#url_ignore"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clearAllDomain()V
    .locals 1

    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public declared-synchronized domainSize()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fetchDomain(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "domainName cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/HttpUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getBaseUrl()Lokhttp3/HttpUrl;
    .locals 1

    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    return-object v0
.end method

.method public declared-synchronized getGlobalDomain()Lokhttp3/HttpUrl;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v1, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/HttpUrl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPathSize()I
    .locals 1

    iget v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    return v0
.end method

.method public declared-synchronized haveDomain(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAdvancedModel()Z
    .locals 1

    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRun()Z
    .locals 1

    iget-boolean v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    return v0
.end method

.method public processRequest(Lokhttp3/Request;)Lokhttp3/Request;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#url_ignore"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-direct {p0, v0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pruneIdentification(Lokhttp3/Request$Builder;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->obtainDomainNameFromHeaders(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-direct {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->listenersToArray()[Ljava/lang/Object;

    move-result-object v2

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 8
    invoke-direct {p0, p1, v1, v2}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, v1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->fetchDomain(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    const-string v3, "Domain-Name"

    .line 10
    invoke-virtual {v0, v3}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_2
    const-string v1, "me.jessyan.retrofiturlmanager.globalDomainName"

    .line 11
    invoke-direct {p0, p1, v1, v2}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->notifyListener(Lokhttp3/Request;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    invoke-virtual {p0}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->getGlobalDomain()Lokhttp3/HttpUrl;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    .line 13
    iget-object v3, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lme/jessyan/retrofiturlmanager/parser/UrlParser;->parseUrl(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Lokhttp3/HttpUrl;

    move-result-object v1

    .line 14
    iget-boolean v3, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    if-eqz v3, :cond_3

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The new url is { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " }, old url is { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " }"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RetrofitUrlManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 16
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_4

    .line 17
    aget-object v4, v2, v3

    check-cast v4, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lme/jessyan/retrofiturlmanager/onUrlChangeListener;->onUrlChanged(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1

    .line 20
    :cond_5
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public putDomain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "domainName cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "domainUrl cannot be null"

    .line 2
    invoke-static {p2, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-static {p2}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerUrlChangeListener(Lme/jessyan/retrofiturlmanager/onUrlChangeListener;)V
    .locals 2

    const-string v0, "listener cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeDomain(Ljava/lang/String;)V
    .locals 2

    const-string v0, "domainName cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeGlobalDomain()V
    .locals 3

    .line 1
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v2, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->debug:Z

    return-void
.end method

.method public setGlobalDomain(Ljava/lang/String;)V
    .locals 3

    const-string v0, "globalDomain cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mDomainNameHub:Ljava/util/Map;

    const-string v2, "me.jessyan.retrofiturlmanager.globalDomainName"

    invoke-static {p1}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setPathSizeOfUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const-string v0, "url cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-ltz p2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#baseurl_path_size="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "pathSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRun(Z)V
    .locals 0

    iput-boolean p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->isRun:Z

    return-void
.end method

.method public setUrlNotChange(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "url cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#url_ignore"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setUrlParser(Lme/jessyan/retrofiturlmanager/parser/UrlParser;)V
    .locals 1

    const-string v0, "parser cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mUrlParser:Lme/jessyan/retrofiturlmanager/parser/UrlParser;

    return-void
.end method

.method public startAdvancedModel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "baseUrl cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lme/jessyan/retrofiturlmanager/Utils;->checkUrl(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->startAdvancedModel(Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public declared-synchronized startAdvancedModel(Lokhttp3/HttpUrl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "baseUrl cannot be null"

    .line 3
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->baseUrl:Lokhttp3/HttpUrl;

    .line 5
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSize()I

    move-result v0

    iput v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    .line 6
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->pathSegments()Ljava/util/List;

    move-result-object p1

    const-string v0, ""

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    iget p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->pathSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public unregisterUrlChangeListener(Lme/jessyan/retrofiturlmanager/onUrlChangeListener;)V
    .locals 2

    const-string v0, "listener cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public with(Lokhttp3/OkHttpClient$Builder;)Lokhttp3/OkHttpClient$Builder;
    .locals 1

    const-string v0, "builder cannot be null"

    .line 1
    invoke-static {p1, v0}, Lme/jessyan/retrofiturlmanager/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lme/jessyan/retrofiturlmanager/RetrofitUrlManager;->mInterceptor:Lokhttp3/Interceptor;

    .line 3
    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    return-object p1
.end method
