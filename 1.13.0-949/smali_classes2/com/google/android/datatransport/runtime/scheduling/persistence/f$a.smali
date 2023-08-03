.class final Lcom/google/android/datatransport/runtime/scheduling/persistence/f$a;
.super Ljava/lang/Object;
.source "EventStoreModule_DbNameFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/runtime/scheduling/persistence/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/android/datatransport/runtime/scheduling/persistence/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/f;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f$a;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/datatransport/runtime/scheduling/persistence/f;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/f$a;->a:Lcom/google/android/datatransport/runtime/scheduling/persistence/f;

    return-object v0
.end method
