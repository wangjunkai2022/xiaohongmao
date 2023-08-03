.class public final Lcom/google/android/play/core/splitinstall/testing/a0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final c:Lcom/google/android/play/core/internal/h;


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParser;

.field private final b:Lcom/google/android/play/core/splitinstall/testing/u;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/h;

    const-string v1, "LocalTestingConfigParser"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/a0;->c:Lcom/google/android/play/core/internal/h;

    return-void
.end method

.method constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {}, Lcom/google/android/play/core/splitinstall/testing/v;->c()Lcom/google/android/play/core/splitinstall/testing/u;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->b:Lcom/google/android/play/core/splitinstall/testing/u;

    return-void
.end method

.method public static a(Ljava/io/File;)Lcom/google/android/play/core/splitinstall/testing/v;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "local_testing_config.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/v;->a:Lcom/google/android/play/core/splitinstall/testing/v;

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    new-instance p0, Lio/sentry/instrumentation/file/m;

    invoke-direct {p0, v0}, Lio/sentry/instrumentation/file/m;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 6
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v2, Lcom/google/android/play/core/splitinstall/testing/a0;

    .line 7
    invoke-direct {v2, v0}, Lcom/google/android/play/core/splitinstall/testing/a0;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/w;

    invoke-direct {v0, v2}, Lcom/google/android/play/core/splitinstall/testing/w;-><init>(Lcom/google/android/play/core/splitinstall/testing/a0;)V

    const-string v3, "local-testing-config"

    .line 8
    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/splitinstall/testing/a0;->e(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/z;)V

    iget-object v0, v2, Lcom/google/android/play/core/splitinstall/testing/a0;->b:Lcom/google/android/play/core/splitinstall/testing/u;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/u;->e()Lcom/google/android/play/core/splitinstall/testing/v;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 12
    :goto_0
    sget-object v0, Lcom/google/android/play/core/splitinstall/testing/a0;->c:Lcom/google/android/play/core/internal/h;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%s can not be parsed, using default. Error: %s"

    .line 14
    invoke-virtual {v0, p0, v2}, Lcom/google/android/play/core/internal/h;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 15
    sget-object p0, Lcom/google/android/play/core/splitinstall/testing/v;->a:Lcom/google/android/play/core/splitinstall/testing/v;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/android/play/core/splitinstall/testing/a0;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "defaultErrorCode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->b:Lcom/google/android/play/core/splitinstall/testing/u;

    iget-object v2, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg3/c;->a(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/play/core/splitinstall/testing/u;->a(I)Lcom/google/android/play/core/splitinstall/testing/u;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/y;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/testing/y;-><init>(Lcom/google/android/play/core/splitinstall/testing/a0;)V

    const-string v1, "split-install-error"

    invoke-direct {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/a0;->e(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/z;)V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/play/core/splitinstall/testing/a0;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v1

    move-object v4, v3

    const/4 v2, 0x0

    .line 1
    :goto_0
    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "module"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    invoke-interface {v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "errorCode"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 5
    invoke-interface {v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 6
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->b:Lcom/google/android/play/core/splitinstall/testing/u;

    .line 7
    invoke-static {v4}, Lg3/c;->a(Ljava/lang/String;)I

    move-result v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/u;->d()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 9
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    return-void

    .line 10
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "split-install-error"

    aput-object v4, v3, v0

    const-string v0, "\'%s\' element does not contain \'module\'/\'errorCode\' attributes."

    .line 11
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v2, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final e(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/z;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {p2}, Lcom/google/android/play/core/splitinstall/testing/z;->zza()V

    goto :goto_0

    .line 5
    :cond_2
    new-instance p2, Lorg/xmlpull/v1/XmlPullParserException;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    .line 6
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Expected \'%s\' tag but found \'%s\'."

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/testing/a0;->a:Lorg/xmlpull/v1/XmlPullParser;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method final synthetic d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/x;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/splitinstall/testing/x;-><init>(Lcom/google/android/play/core/splitinstall/testing/a0;)V

    const-string v1, "split-install-errors"

    invoke-direct {p0, v1, v0}, Lcom/google/android/play/core/splitinstall/testing/a0;->e(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/testing/z;)V

    return-void
.end method
