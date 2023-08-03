.class abstract Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;
.super Ljava/lang/Object;
.source "RootObserver.java"

# interfaces
.implements Lio/reactivex/g0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/g0<",
        "Lretrofit2/Response<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected final b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

.field private c:Lio/reactivex/disposables/c;

.field private d:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RootObserver"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    return-void
.end method

.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RootObserver"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    return-void
.end method

.method private b()Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, v0, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    return-object v0

    .line 4
    :cond_1
    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    return-object v0
.end method

.method public static c(Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/ui/base/n;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->K()V

    .line 2
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->a()V

    if-nez p0, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->C()V

    return-void

    .line 4
    :cond_0
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/net/ConnectException;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/net/SocketException;

    if-nez v0, :cond_6

    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    instance-of v0, p0, Lcom/google/gson/JsonSyntaxException;

    if-nez v0, :cond_5

    instance-of v0, p0, Ljava/lang/NumberFormatException;

    if-nez v0, :cond_5

    instance-of v0, p0, Lcom/google/gson/stream/MalformedJsonException;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    instance-of v0, p0, Lretrofit2/adapter/rxjava2/HttpException;

    if-eqz v0, :cond_3

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    check-cast v1, Lretrofit2/adapter/rxjava2/HttpException;

    invoke-virtual {v1}, Lretrofit2/HttpException;->code()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->r(Ljava/lang/String;)V

    const-string p1, "HTTP Error while handling response!"

    .line 8
    invoke-static {p2, p1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 9
    :cond_3
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_4

    const-string p1, "NPE Error while handling response!"

    .line 10
    invoke-static {p2, p1, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->C()V

    goto :goto_2

    :cond_5
    :goto_0
    const-string v0, "Response syntax or format error while handling response!"

    .line 12
    invoke-static {p2, v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "\u6570\u636e\u89e3\u6790\u51fa\u9519"

    .line 13
    invoke-interface {p1, p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->r(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string v0, "Network Error while handling response!"

    .line 14
    invoke-static {p2, v0, p0}, Lcom/qennnsad/aknkaksd/util/o0;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->n()V

    :goto_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getInstance()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v1

    iget-object v1, v1, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->localDataManager:Lg5/a;

    invoke-virtual {v1}, Lg5/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qennnsad/aknkaksd/util/JwtUtil;->asMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decode:--jsontype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", encoded:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1, v1}, Lcom/qennnsad/aknkaksd/util/AES;->aesdecrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;

    .line 6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decode-json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request data but get failure:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->a()V

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->C()V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getCode()I

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1a2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b()Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 4
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->h(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responscode-ALERTMESSAGE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getInstance()Lcom/qennnsad/aknkaksd/BaseBeautyApplication;

    move-result-object v0

    iget-object v0, v0, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->localDataManager:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->a()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->d(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responscode-OPENURL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;->getWarn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->i(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public abstract f(Lcom/qennnsad/aknkaksd/data/bean/BaseResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method protected g(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->v(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected h(Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmActivity;->e0()V

    return-void
.end method

.method protected i(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->r(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->K()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c:Lio/reactivex/disposables/c;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c:Lio/reactivex/disposables/c;

    invoke-interface {v0}, Lio/reactivex/disposables/c;->dispose()V

    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "BaseObserver"

    const-string v2, "Request Error!"

    invoke-static {v1, v2, v0}, Lcom/qennnsad/aknkaksd/util/o0;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request Error!--mUiInterface!=null--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/o0;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->b:Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c(Ljava/lang/Throwable;Lcom/qennnsad/aknkaksd/presentation/ui/base/n;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 6
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c:Lio/reactivex/disposables/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lio/reactivex/disposables/c;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c:Lio/reactivex/disposables/c;

    invoke-interface {p1}, Lio/reactivex/disposables/c;->dispose()V

    :cond_1
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/c;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/observer/c;->c:Lio/reactivex/disposables/c;

    return-void
.end method
