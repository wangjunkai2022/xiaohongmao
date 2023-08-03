.class public final Lio/sentry/android/fragment/d;
.super Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;
.source "SentryFragmentLifecycleCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/fragment/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryFragmentLifecycleCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryFragmentLifecycleCallbacks.kt\nio/sentry/android/fragment/SentryFragmentLifecycleCallbacks\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,190:1\n1#2:191\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0018\u0000 (2\u00020\u0001:\u0001#B\'\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\"\u0012\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040&\u0012\u0006\u0010.\u001a\u00020\n\u00a2\u0006\u0004\u00087\u00108B!\u0008\u0016\u0012\u0006\u0010%\u001a\u00020\"\u0012\u0006\u00106\u001a\u00020\n\u0012\u0006\u0010.\u001a\u00020\n\u00a2\u0006\u0004\u00087\u00109B\u001d\u0008\u0016\u0012\u0008\u0008\u0002\u00106\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\n\u00a2\u0006\u0004\u00087\u0010:J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0010\u0010\r\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J \u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J \u0010\u0015\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\"\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016J*\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0013H\u0016J\u0018\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010 \u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0018\u0010!\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001d\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040&8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\'\u001a\u0004\u0008(\u0010)R\u0017\u0010.\u001a\u00020\n8\u0006\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008+\u0010-R \u00103\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002000/8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0014\u00105\u001a\u00020\n8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u0010-R\u0011\u00106\u001a\u00020\n8F\u00a2\u0006\u0006\u001a\u0004\u00081\u0010-\u00a8\u0006;"
    }
    d2 = {
        "Lio/sentry/android/fragment/d;",
        "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;",
        "Landroidx/fragment/app/Fragment;",
        "fragment",
        "Lio/sentry/android/fragment/FragmentLifecycleState;",
        "state",
        "",
        "b",
        "",
        "f",
        "",
        "h",
        "i",
        "k",
        "Landroidx/fragment/app/FragmentManager;",
        "fragmentManager",
        "Landroid/content/Context;",
        "context",
        "onFragmentAttached",
        "Landroid/os/Bundle;",
        "outState",
        "onFragmentSaveInstanceState",
        "savedInstanceState",
        "onFragmentCreated",
        "Landroid/view/View;",
        "view",
        "onFragmentViewCreated",
        "onFragmentStarted",
        "onFragmentResumed",
        "onFragmentPaused",
        "onFragmentStopped",
        "onFragmentViewDestroyed",
        "onFragmentDestroyed",
        "onFragmentDetached",
        "Lio/sentry/n0;",
        "a",
        "Lio/sentry/n0;",
        "hub",
        "",
        "Ljava/util/Set;",
        "e",
        "()Ljava/util/Set;",
        "filterFragmentLifecycleBreadcrumbs",
        "c",
        "Z",
        "()Z",
        "enableAutoFragmentLifecycleTracing",
        "Ljava/util/WeakHashMap;",
        "Lio/sentry/v0;",
        "d",
        "Ljava/util/WeakHashMap;",
        "fragmentsWithOngoingTransactions",
        "g",
        "isPerformanceEnabled",
        "enableFragmentLifecycleBreadcrumbs",
        "<init>",
        "(Lio/sentry/n0;Ljava/util/Set;Z)V",
        "(Lio/sentry/n0;ZZ)V",
        "(ZZ)V",
        "sentry-android-fragment_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final e:Lio/sentry/android/fragment/d$a;
    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final f:Ljava/lang/String; = "ui.load"
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lio/sentry/n0;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/android/fragment/FragmentLifecycleState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Z

.field private final d:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Lio/sentry/v0;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/fragment/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/fragment/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/fragment/d;->e:Lio/sentry/android/fragment/d$a;

    return-void
.end method

.method public constructor <init>(Lio/sentry/n0;Ljava/util/Set;Z)V
    .locals 1
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/n0;",
            "Ljava/util/Set<",
            "+",
            "Lio/sentry/android/fragment/FragmentLifecycleState;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filterFragmentLifecycleBreadcrumbs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;-><init>()V

    .line 4
    iput-object p1, p0, Lio/sentry/android/fragment/d;->a:Lio/sentry/n0;

    .line 5
    iput-object p2, p0, Lio/sentry/android/fragment/d;->b:Ljava/util/Set;

    .line 6
    iput-boolean p3, p0, Lio/sentry/android/fragment/d;->c:Z

    .line 7
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lio/sentry/android/fragment/d;->d:Ljava/util/WeakHashMap;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/n0;Ljava/util/Set;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 1
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object p1

    const-string p4, "getInstance()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/fragment/d;-><init>(Lio/sentry/n0;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/n0;ZZ)V
    .locals 1
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lio/sentry/android/fragment/FragmentLifecycleState;->values()[Lio/sentry/android/fragment/FragmentLifecycleState;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    :goto_1
    invoke-direct {p0, p1, v0, p3}, Lio/sentry/android/fragment/d;-><init>(Lio/sentry/n0;Ljava/util/Set;Z)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    .line 12
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lio/sentry/android/fragment/FragmentLifecycleState;->values()[Lio/sentry/android/fragment/FragmentLifecycleState;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 15
    :goto_1
    invoke-direct {p0, v0, v1, p2}, Lio/sentry/android/fragment/d;-><init>(Lio/sentry/n0;Ljava/util/Set;Z)V

    return-void
.end method

.method public synthetic constructor <init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/fragment/d;-><init>(ZZ)V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/r2;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/android/fragment/d;->j(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/r2;)V

    return-void
.end method

.method private final b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/fragment/d;->b:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lio/sentry/f;

    invoke-direct {v0}, Lio/sentry/f;-><init>()V

    const-string v1, "navigation"

    .line 3
    invoke-virtual {v0, v1}, Lio/sentry/f;->y(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Lio/sentry/android/fragment/FragmentLifecycleState;->getBreadcrumbName$sentry_android_fragment_release()Ljava/lang/String;

    move-result-object p2

    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-direct {p0, p1}, Lio/sentry/android/fragment/d;->f(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "screen"

    invoke-virtual {v0, v1, p2}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p2, "ui.fragment.lifecycle"

    .line 6
    invoke-virtual {v0, p2}, Lio/sentry/f;->u(Ljava/lang/String;)V

    .line 7
    sget-object p2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    invoke-virtual {v0, p2}, Lio/sentry/f;->w(Lio/sentry/SentryLevel;)V

    .line 8
    new-instance p2, Lio/sentry/b0;

    invoke-direct {p2}, Lio/sentry/b0;-><init>()V

    const-string v1, "android:fragment"

    .line 9
    invoke-virtual {p2, v1, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lio/sentry/android/fragment/d;->a:Lio/sentry/n0;

    invoke-interface {p1, v0, p2}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    return-void
.end method

.method private final f(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string p1, "fragment.javaClass.simpleName"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private final g()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/android/fragment/d;->a:Lio/sentry/n0;

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/sentry/android/fragment/d;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final h(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    iget-object v0, p0, Lio/sentry/android/fragment/d;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final i(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/sentry/android/fragment/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lio/sentry/android/fragment/d;->h(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 3
    iget-object v1, p0, Lio/sentry/android/fragment/d;->a:Lio/sentry/n0;

    new-instance v2, Lio/sentry/android/fragment/c;

    invoke-direct {v2, v0}, Lio/sentry/android/fragment/c;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v1, v2}, Lio/sentry/n0;->t(Lio/sentry/s2;)V

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/android/fragment/d;->f(Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lio/sentry/v0;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "ui.load"

    invoke-interface {v0, v2, v1}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Lio/sentry/android/fragment/d;->d:Ljava/util/WeakHashMap;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method private static final j(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/sentry/r2;)V
    .locals 1

    const-string v0, "$transaction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/sentry/r2;->w()Lio/sentry/w0;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private final k(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/sentry/android/fragment/d;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lio/sentry/android/fragment/d;->h(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lio/sentry/android/fragment/d;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/v0;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Lio/sentry/v0;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    sget-object v1, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    .line 5
    :cond_2
    invoke-interface {v0, v1}, Lio/sentry/v0;->t(Lio/sentry/SpanStatus;)V

    .line 6
    iget-object v0, p0, Lio/sentry/android/fragment/d;->d:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/v0;

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lio/sentry/android/fragment/d;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/android/fragment/d;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/android/fragment/FragmentLifecycleState;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/android/fragment/d;->b:Ljava/util/Set;

    return-object v0
.end method

.method public onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "context"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->ATTACHED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p3, "fragmentManager"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->CREATED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    .line 2
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lio/sentry/android/fragment/d;->i(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->DESTROYED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    .line 2
    invoke-direct {p0, p2}, Lio/sentry/android/fragment/d;->k(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->DETACHED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->PAUSED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->RESUMED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    .line 2
    invoke-direct {p0, p2}, Lio/sentry/android/fragment/d;->k(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "outState"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->SAVE_INSTANCE_STATE:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->STARTED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->STOPPED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string p4, "fragmentManager"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "view"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->VIEW_CREATED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method

.method public onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/Fragment;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fragment"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lio/sentry/android/fragment/FragmentLifecycleState;->VIEW_DESTROYED:Lio/sentry/android/fragment/FragmentLifecycleState;

    invoke-direct {p0, p2, p1}, Lio/sentry/android/fragment/d;->b(Landroidx/fragment/app/Fragment;Lio/sentry/android/fragment/FragmentLifecycleState;)V

    return-void
.end method
