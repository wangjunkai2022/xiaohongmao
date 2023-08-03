.class public final synthetic Lcom/google/android/gms/common/v;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/android/gms/common/a0;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Lcom/google/android/gms/common/a0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/v;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/v;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/v;->c:Lcom/google/android/gms/common/a0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/v;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/common/v;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/v;->c:Lcom/google/android/gms/common/a0;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/e0;->c(ZLjava/lang/String;Lcom/google/android/gms/common/a0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
