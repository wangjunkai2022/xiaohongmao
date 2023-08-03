.class public final Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "UpdateViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\nR\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/qennnsad/aknkaksd/util/m1;",
        "a",
        "Lcom/qennnsad/aknkaksd/util/m1;",
        "updateUtil",
        "",
        "()Ljava/lang/String;",
        "path",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/util/m1;)V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation build Ll6/a;
.end annotation


# instance fields
.field private final a:Lcom/qennnsad/aknkaksd/util/m1;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/util/m1;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/util/m1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    const-string v0, "updateUtil"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;->a:Lcom/qennnsad/aknkaksd/util/m1;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;->a:Lcom/qennnsad/aknkaksd/util/m1;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/util/m1;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
