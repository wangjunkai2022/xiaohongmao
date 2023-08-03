.class public final Lcom/google/android/gms/tasks/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.1"


# static fields
.field public static final a:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field static final b:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/tasks/o0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/o0;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/m;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tasks/n0;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/n0;-><init>()V

    sput-object v0, Lcom/google/android/gms/tasks/m;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
