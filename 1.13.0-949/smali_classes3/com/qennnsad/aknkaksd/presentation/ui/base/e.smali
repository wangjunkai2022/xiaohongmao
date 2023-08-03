.class public Lcom/qennnsad/aknkaksd/presentation/ui/base/e;
.super Ljava/lang/Object;
.source "BasePresenter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UiType::",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "To be removed when its 2 remaining descendants are finally migrated to MVVM"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0017\u0018\u0000*\n\u0008\u0000\u0010\u0002*\u0004\u0018\u00010\u00012\u00020\u0003B\u000f\u0012\u0006\u0010\u001c\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0008\u0010\u0005\u001a\u00020\u0004H\u0016R\u001c\u0010\n\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068\u0006X\u0087\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0010\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0008\u0010\u0012R\u0011\u0010\u0015\u001a\u00020\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0014R\u0011\u0010\u0019\u001a\u00020\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u0004\u0018\u00018\u00008DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/e;",
        "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;",
        "UiType",
        "",
        "",
        "a",
        "",
        "kotlin.jvm.PlatformType",
        "b",
        "Ljava/lang/String;",
        "TAG",
        "Ljava/lang/ref/WeakReference;",
        "c",
        "Ljava/lang/ref/WeakReference;",
        "mUiInterface",
        "Lf5/e;",
        "helper",
        "Lf5/e;",
        "()Lf5/e;",
        "Lg5/a;",
        "()Lg5/a;",
        "localDataManager",
        "Lcom/qennnsad/aknkaksd/data/repository/m;",
        "d",
        "()Lcom/qennnsad/aknkaksd/data/repository/m;",
        "sourceFactory",
        "e",
        "()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;",
        "uiInterface",
        "<init>",
        "(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V",
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
.field private final a:Lf5/e;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TUiType;>;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/base/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TUiType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->b:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->c:Ljava/lang/ref/WeakReference;

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;->b()Landroid/content/Context;

    move-result-object p1

    const-class v0, Lf5/d;

    invoke-static {p1, v0}, Ldagger/hilt/c;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf5/d;

    invoke-interface {p1}, Lf5/d;->c()Lf5/e;

    move-result-object p1

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->a:Lf5/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public final b()Lf5/e;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->a:Lf5/e;

    return-object v0
.end method

.method public final c()Lg5/a;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->a:Lf5/e;

    invoke-virtual {v0}, Lf5/e;->c()Lg5/a;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/qennnsad/aknkaksd/data/repository/m;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->a:Lf5/e;

    invoke-virtual {v0}, Lf5/e;->g()Lcom/qennnsad/aknkaksd/data/repository/m;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lcom/qennnsad/aknkaksd/presentation/ui/base/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUiType;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/base/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/base/n;

    return-object v0
.end method
