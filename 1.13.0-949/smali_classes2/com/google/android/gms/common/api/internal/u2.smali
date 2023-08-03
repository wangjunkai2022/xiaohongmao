.class public final Lcom/google/android/gms/common/api/internal/u2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@18.0.1"


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/base/p;->a()Lcom/google/android/gms/internal/base/m;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/util/concurrent/c;

    const-string v2, "GAC_Transform"

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/util/concurrent/c;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/base/m;->c(Ljava/util/concurrent/ThreadFactory;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/internal/u2;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/api/internal/u2;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
