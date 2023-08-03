.class public final Lcom/google/android/play/core/tasks/e;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/tasks/q;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/q;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/e;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/play/core/tasks/p;

    invoke-direct {v0}, Lcom/google/android/play/core/tasks/p;-><init>()V

    sput-object v0, Lcom/google/android/play/core/tasks/e;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
