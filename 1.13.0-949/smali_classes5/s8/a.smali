.class public final Ls8/a;
.super Ljava/lang/Object;
.source "ViewModelOwner.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls8/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Replaced by ViewModelStoreOwner"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\nB\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000e"
    }
    d2 = {
        "Ls8/a;",
        "",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "storeOwner",
        "Landroidx/lifecycle/ViewModelStoreOwner;",
        "b",
        "()Landroidx/lifecycle/ViewModelStoreOwner;",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "stateRegistry",
        "Landroidx/savedstate/SavedStateRegistryOwner;",
        "a",
        "()Landroidx/savedstate/SavedStateRegistryOwner;",
        "<init>",
        "(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V",
        "koin-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final c:Ls8/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/lifecycle/ViewModelStoreOwner;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Landroidx/savedstate/SavedStateRegistryOwner;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls8/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ls8/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ls8/a;->c:Ls8/a$a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/ViewModelStoreOwner;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/SavedStateRegistryOwner;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "storeOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ls8/a;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    .line 3
    iput-object p2, p0, Ls8/a;->b:Landroidx/savedstate/SavedStateRegistryOwner;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Ls8/a;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/savedstate/SavedStateRegistryOwner;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Ls8/a;->b:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object v0
.end method

.method public final b()Landroidx/lifecycle/ViewModelStoreOwner;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Ls8/a;->a:Landroidx/lifecycle/ViewModelStoreOwner;

    return-object v0
.end method
