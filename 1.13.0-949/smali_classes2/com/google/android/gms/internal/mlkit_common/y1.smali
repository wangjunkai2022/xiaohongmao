.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/y1;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/y1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/y1;->a:Landroid/content/Context;

    sget v1, Lcom/google/android/gms/internal/mlkit_common/d7;->d:I

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
