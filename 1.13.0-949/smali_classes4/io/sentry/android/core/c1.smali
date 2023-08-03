.class final Lio/sentry/android/core/c1;
.super Ljava/lang/Object;
.source "NoOpDebugImagesLoader.java"

# interfaces
.implements Lio/sentry/android/core/v0;


# static fields
.field private static final a:Lio/sentry/android/core/c1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/core/c1;

    invoke-direct {v0}, Lio/sentry/android/core/c1;-><init>()V

    sput-object v0, Lio/sentry/android/core/c1;->a:Lio/sentry/android/core/c1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lio/sentry/android/core/c1;
    .locals 1

    sget-object v0, Lio/sentry/android/core/c1;->a:Lio/sentry/android/core/c1;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/DebugImage;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()V
    .locals 0

    return-void
.end method
