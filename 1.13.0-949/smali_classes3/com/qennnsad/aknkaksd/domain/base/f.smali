.class public abstract Lcom/qennnsad/aknkaksd/domain/base/f;
.super Ljava/lang/Object;
.source "RxObserver.kt"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "Lretrofit2/Response<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00050\u00040\u0003B\u0017\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0018\u0010\t\u001a\u00020\u00082\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0006H\u0002J\u0017\u0010\u000b\u001a\u00020\u00082\u0006\u0010\n\u001a\u00028\u0000H&\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\rH&J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0010H&J\u0014\u0010\u0014\u001a\u00020\u00082\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0016R \u0010\u001a\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00060\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0019\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/domain/base/f;",
        "",
        "Data",
        "Lio/reactivex/g0;",
        "Lretrofit2/Response;",
        "",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        "response",
        "",
        "e",
        "data",
        "d",
        "(Ljava/lang/Object;)V",
        "",
        "t",
        "b",
        "Lcom/qennnsad/aknkaksd/domain/base/a;",
        "action",
        "a",
        "stringResponse",
        "c",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/reflect/Type;",
        "type",
        "Lcom/qennnsad/aknkaksd/domain/base/b;",
        "Lcom/qennnsad/aknkaksd/domain/base/b;",
        "decoder",
        "Lg5/a;",
        "localDataManager",
        "<init>",
        "(Ljava/lang/reflect/Type;Lg5/a;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Type;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lg5/a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/qennnsad/aknkaksd/domain/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qennnsad/aknkaksd/domain/base/b<",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "TData;>;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Lg5/a;)V
    .locals 1
    .param p1    # Ljava/lang/reflect/Type;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lg5/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDataManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->a:Ljava/lang/reflect/Type;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->b:Lg5/a;

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-direct {v0, p1, p2}, Lcom/qennnsad/aknkaksd/domain/base/b;-><init>(Ljava/lang/reflect/Type;Lg5/a;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    return-void
.end method

.method private final e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getCode()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x12e

    const-string v2, "response.msg"

    const-string v3, "RxObserver"

    if-eq v0, v1, :cond_3

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/RequestException;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/RequestException;-><init>(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->b(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responscode Too Frequet Warning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/a$a;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/a$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->a(Lcom/qennnsad/aknkaksd/domain/base/a;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responscode Warning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/a$c;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/a$c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->a(Lcom/qennnsad/aknkaksd/domain/base/a;)V

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/TokenExpiredException;

    invoke-direct {v0, p1}, Lcom/qennnsad/aknkaksd/domain/base/TokenExpiredException;-><init>(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responscode OPENURL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/qennnsad/aknkaksd/domain/base/a$b;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1, v2}, Lcom/qennnsad/aknkaksd/domain/base/a$b;-><init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->a(Lcom/qennnsad/aknkaksd/domain/base/a;)V

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getData()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "response.data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/base/f;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/qennnsad/aknkaksd/domain/base/a;)V
    .param p1    # Lcom/qennnsad/aknkaksd/domain/base/a;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public abstract b(Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lm8/g;
        .end annotation
    .end param
.end method

.method public final c(Lretrofit2/Response;)V
    .locals 4
    .param p1    # Lretrofit2/Response;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "stringResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    if-ne v1, v3, :cond_4

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "tiger"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/domain/base/b;->c(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "panda"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/domain/base/b;->b(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string v1, "cola"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/domain/base/b;->a(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const-string v1, "tiger2"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/domain/base/b;->d(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0

    goto :goto_1

    .line 11
    :cond_3
    :goto_0
    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;-><init>()V

    .line 12
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    const-string v1, "\u6570\u636e\u89e3\u6790\u5f02\u5e38"

    .line 13
    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/domain/base/f;->c:Lcom/qennnsad/aknkaksd/domain/base/b;

    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/domain/base/b;->a(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;-><init>()V

    .line 15
    invoke-virtual {v0, v2}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setMsg(Ljava/lang/String;)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {p1}, Lretrofit2/Response;->raw()Lokhttp3/Response;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    const/16 v1, 0x191

    if-eq p1, v1, :cond_6

    const/16 v1, 0x1ad

    if-eq p1, v1, :cond_6

    goto :goto_2

    .line 18
    :cond_6
    invoke-virtual {v0, p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->setCode(I)V

    .line 19
    :cond_7
    :goto_2
    invoke-direct {p0, v0}, Lcom/qennnsad/aknkaksd/domain/base/f;->e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3415d8ad -> :sswitch_3
        0x2eaee1 -> :sswitch_2
        0x65809da -> :sswitch_1
        0x693f0bf -> :sswitch_0
    .end sparse-switch
.end method

.method public abstract d(Ljava/lang/Object;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/domain/base/f;->c(Lretrofit2/Response;)V

    return-void
.end method
