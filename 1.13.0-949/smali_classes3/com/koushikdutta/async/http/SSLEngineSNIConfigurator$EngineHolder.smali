.class Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;
.super Ljava/lang/Object;
.source "SSLEngineSNIConfigurator.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncSSLEngineConfigurator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EngineHolder"
.end annotation


# instance fields
.field a:Ljava/lang/reflect/Field;

.field b:Ljava/lang/reflect/Field;

.field c:Ljava/lang/reflect/Field;

.field d:Ljava/lang/reflect/Field;

.field e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "peerHost"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "peerPort"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->b:Ljava/lang/reflect/Field;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const-string v0, "sslParameters"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->c:Ljava/lang/reflect/Field;

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    iget-object p1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "useSni"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->d:Ljava/lang/reflect/Field;

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLEngine;Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->d:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->e:Z

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->b:Ljava/lang/reflect/Field;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->c:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/koushikdutta/async/http/SSLEngineSNIConfigurator$EngineHolder;->d:Ljava/lang/reflect/Field;

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljavax/net/ssl/SSLContext;Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
