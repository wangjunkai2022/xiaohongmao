.class public final synthetic Lio/sentry/android/core/k1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/sentry/c3$a;


# static fields
.field public static final synthetic a:Lio/sentry/android/core/k1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/k1;

    invoke-direct {v0}, Lio/sentry/android/core/k1;-><init>()V

    sput-object v0, Lio/sentry/android/core/k1;->a:Lio/sentry/android/core/k1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/sentry/SentryOptions;)V
    .locals 0

    check-cast p1, Lio/sentry/android/core/SentryAndroidOptions;

    invoke-static {p1}, Lio/sentry/android/core/l1;->b(Lio/sentry/android/core/SentryAndroidOptions;)V

    return-void
.end method
