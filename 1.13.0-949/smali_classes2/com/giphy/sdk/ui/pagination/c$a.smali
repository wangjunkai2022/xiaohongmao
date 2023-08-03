.class public final Lcom/giphy/sdk/ui/pagination/c$a;
.super Ljava/lang/Object;
.source "NetworkState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/giphy/sdk/ui/pagination/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002R\u0017\u0010\u0007\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u000b\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0008\u001a\u0004\u0008\u000c\u0010\nR\u0017\u0010\r\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0008\u001a\u0004\u0008\u000e\u0010\nR\u0017\u0010\u000f\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\u0010\u0010\n\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/pagination/c$a;",
        "",
        "",
        "msg",
        "Lcom/giphy/sdk/ui/pagination/c;",
        "a",
        "b",
        "LOADED",
        "Lcom/giphy/sdk/ui/pagination/c;",
        "c",
        "()Lcom/giphy/sdk/ui/pagination/c;",
        "LOADED_INITIAL",
        "d",
        "LOADING",
        "e",
        "LOADING_INITIAL",
        "f",
        "<init>",
        "()V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/giphy/sdk/ui/pagination/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/c;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/giphy/sdk/ui/pagination/c;

    sget-object v1, Lcom/giphy/sdk/ui/pagination/Status;->FAILED:Lcom/giphy/sdk/ui/pagination/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/giphy/sdk/ui/pagination/c;-><init>(Lcom/giphy/sdk/ui/pagination/Status;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/giphy/sdk/ui/pagination/c;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/giphy/sdk/ui/pagination/c;

    sget-object v1, Lcom/giphy/sdk/ui/pagination/Status;->FAILED_INITIAL:Lcom/giphy/sdk/ui/pagination/Status;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/giphy/sdk/ui/pagination/c;-><init>(Lcom/giphy/sdk/ui/pagination/Status;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final c()Lcom/giphy/sdk/ui/pagination/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/c;->a()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/giphy/sdk/ui/pagination/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/c;->b()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/giphy/sdk/ui/pagination/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/c;->c()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lcom/giphy/sdk/ui/pagination/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {}, Lcom/giphy/sdk/ui/pagination/c;->d()Lcom/giphy/sdk/ui/pagination/c;

    move-result-object v0

    return-object v0
.end method
