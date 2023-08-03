.class final Ldagger/hilt/android/internal/managers/c$a;
.super Ljava/lang/Object;
.source "ActivityRetainedComponentManager_Lifecycle_Factory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Ldagger/hilt/android/internal/managers/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldagger/hilt/android/internal/managers/c;

    invoke-direct {v0}, Ldagger/hilt/android/internal/managers/c;-><init>()V

    sput-object v0, Ldagger/hilt/android/internal/managers/c$a;->a:Ldagger/hilt/android/internal/managers/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ldagger/hilt/android/internal/managers/c;
    .locals 1

    sget-object v0, Ldagger/hilt/android/internal/managers/c$a;->a:Ldagger/hilt/android/internal/managers/c;

    return-object v0
.end method
