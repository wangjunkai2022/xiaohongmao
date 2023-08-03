.class public final synthetic Lio/reactivex/rxjava3/android/schedulers/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/reactivex/rxjava3/android/schedulers/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/android/schedulers/a;

    invoke-direct {v0}, Lio/reactivex/rxjava3/android/schedulers/a;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/android/schedulers/a;->a:Lio/reactivex/rxjava3/android/schedulers/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/b;->a()Lio/reactivex/rxjava3/core/o0;

    move-result-object v0

    return-object v0
.end method
