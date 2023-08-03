.class public abstract Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/b;
.super Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;
.source "BasePandaObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        ">",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field e:Z


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;-><init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V

    .line 2
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->b()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lf5/d;

    invoke-static {p1, v0}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lf5/e;->e()Lcom/qennnsad/aknkaksd/util/t0;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/util/t0;->n()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/b;->e:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    return-void
.end method

.method public j(Lretrofit2/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lokhttp3/Headers;

    move-result-object v0

    const-string v1, "x-content-puzzle"

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "panda"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;-><init>()V

    .line 5
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    const-string v1, "\u8fd0\u884c\u9519\u8bef:1001"

    .line 6
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setMsg(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setData(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    const-string v1, "decode-panda:"

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 10
    iget-boolean v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/b;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "<pre>"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v3, "</pre>"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    if-le v3, v4, :cond_1

    add-int/lit8 v3, v3, 0x6

    .line 13
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    .line 14
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 15
    :cond_1
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;-><init>()V

    .line 17
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    const-string v1, "\u8fd0\u884c\u9519\u8bef:1002"

    .line 18
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setMsg(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setData(Ljava/lang/Object;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;-><init>()V

    .line 21
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setMsg(Ljava/lang/String;)V

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setData(Ljava/lang/Object;)V

    .line 24
    :goto_0
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v1, 0x191

    if-ne p1, v1, :cond_3

    .line 25
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    .line 26
    :cond_3
    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/b;->e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    return-void
.end method

.method public bridge synthetic onComplete()V
    .locals 0

    invoke-super {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->onComplete()V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/b;->j(Lretrofit2/Response;)V

    return-void
.end method

.method public bridge synthetic onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->onSubscribe(Lio/reactivex/disposables/c;)V

    return-void
.end method
