.class public final Lcom/google/android/play/core/appupdate/c0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private a:Lcom/google/android/play/core/appupdate/l;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/appupdate/l;)Lcom/google/android/play/core/appupdate/c0;
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/c0;->a:Lcom/google/android/play/core/appupdate/l;

    return-object p0
.end method

.method public final b()Lcom/google/android/play/core/appupdate/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/appupdate/c0;->a:Lcom/google/android/play/core/appupdate/l;

    const-class v1, Lcom/google/android/play/core/appupdate/l;

    invoke-static {v0, v1}, Lcom/google/android/play/core/internal/q1;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/appupdate/f;

    iget-object v1, p0, Lcom/google/android/play/core/appupdate/c0;->a:Lcom/google/android/play/core/appupdate/l;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/appupdate/f;-><init>(Lcom/google/android/play/core/appupdate/l;Lcom/google/android/play/core/appupdate/d0;)V

    return-object v0
.end method
