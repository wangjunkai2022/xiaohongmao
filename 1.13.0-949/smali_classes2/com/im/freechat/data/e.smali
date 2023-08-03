.class public final Lcom/im/freechat/data/e;
.super Ljava/lang/Object;
.source "FileRepositoryImpl.kt"

# interfaces
.implements Lcom/im/freechat/domain/g;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0011\u001a\u00020\r\u0012\u0006\u0010\u0014\u001a\u00020\u0012\u0012\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J5\u0010\u0008\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016R\u0017\u0010\u0011\u001a\u00020\r8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0014\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0013R\u0014\u0010\u0017\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0016\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/data/e;",
        "Lcom/im/freechat/domain/g;",
        "",
        "token",
        "uriString",
        "mimeType",
        "",
        "size",
        "a",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "name",
        "Ljava/io/File;",
        "b",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "c",
        "()Landroid/content/Context;",
        "context",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "Lcom/im/freechat/data/sources/api/ApiService;",
        "apiService",
        "Lcom/im/freechat/domain/h;",
        "Lcom/im/freechat/domain/h;",
        "fileUtil",
        "<init>",
        "(Landroid/content/Context;Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/domain/h;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lcom/im/freechat/data/sources/api/ApiService;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/im/freechat/domain/h;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/im/freechat/data/sources/api/ApiService;Lcom/im/freechat/domain/h;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/sources/api/ApiService;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/domain/h;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtil"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/e;->b:Lcom/im/freechat/data/sources/api/ApiService;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/e;->c:Lcom/im/freechat/domain/h;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p6    # Lkotlin/coroutines/Continuation;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    instance-of p4, p6, Lcom/im/freechat/data/e$a;

    if-eqz p4, :cond_0

    move-object p4, p6

    check-cast p4, Lcom/im/freechat/data/e$a;

    iget p5, p4, Lcom/im/freechat/data/e$a;->c:I

    const/high16 v0, -0x80000000

    and-int v1, p5, v0

    if-eqz v1, :cond_0

    sub-int/2addr p5, v0

    iput p5, p4, Lcom/im/freechat/data/e$a;->c:I

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/im/freechat/data/e$a;

    invoke-direct {p4, p0, p6}, Lcom/im/freechat/data/e$a;-><init>(Lcom/im/freechat/data/e;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, p4, Lcom/im/freechat/data/e$a;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p6

    .line 1
    iget v0, p4, Lcom/im/freechat/data/e$a;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-string p5, "avatar"

    .line 4
    invoke-virtual {p0, p5, p2}, Lcom/im/freechat/data/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 5
    sget-object v0, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    sget-object v3, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v4, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    invoke-virtual {v4, p3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p2

    const-string p3, "avatar.jpg"

    invoke-virtual {v0, p5, p3, p2}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    .line 6
    iget-object p3, p0, Lcom/im/freechat/data/e;->b:Lcom/im/freechat/data/sources/api/ApiService;

    iput v2, p4, Lcom/im/freechat/data/e$a;->c:I

    invoke-interface {p3, p1, p2, v1, p4}, Lcom/im/freechat/data/sources/api/ApiService;->updateUserInfo(Ljava/lang/String;Lokhttp3/MultipartBody$Part;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, p6, :cond_3

    return-object p6

    :cond_3
    :goto_1
    check-cast p5, Lcom/im/freechat/data/sources/api/entities/Response;

    invoke-virtual {p5}, Lcom/im/freechat/data/sources/api/entities/Response;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/im/freechat/data/sources/api/entities/contact/ContactResponse;->getAvatar()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uriString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/im/freechat/data/e;->c:Lcom/im/freechat/domain/h;

    const/4 v2, 0x0

    const-string v5, "jpg"

    const/16 v6, 0x190

    const/16 v7, 0x190

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v1 .. v7}, Lcom/im/freechat/domain/h;->i(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final c()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/e;->a:Landroid/content/Context;

    return-object v0
.end method
