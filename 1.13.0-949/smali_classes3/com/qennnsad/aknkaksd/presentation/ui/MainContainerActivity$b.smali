.class public Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;
.super Ljava/lang/Object;
.source "MainContainerActivity.kt"

# interfaces
.implements Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0006\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/MainContainerActivity$b;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a$a;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;",
        "dialog",
        "",
        "b",
        "a",
        "<init>",
        "()V",
        "app_pron_playerRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 0
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;)V
    .locals 1
    .param p1    # Lcom/qennnsad/aknkaksd/presentation/ui/widget/a;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
