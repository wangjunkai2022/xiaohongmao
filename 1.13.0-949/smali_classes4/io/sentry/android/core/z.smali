.class public final synthetic Lio/sentry/android/core/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lio/sentry/android/core/z;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/z;

    invoke-direct {v0}, Lio/sentry/android/core/z;-><init>()V

    sput-object v0, Lio/sentry/android/core/z;->a:Lio/sentry/android/core/z;

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

    invoke-static {}, Lio/sentry/android/core/a0;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
