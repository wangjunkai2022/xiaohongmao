.class public final synthetic Lcom/google/android/gms/internal/mlkit_common/bb;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/io/FileDescriptor;


# direct methods
.method public synthetic constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/bb;->a:Ljava/io/FileDescriptor;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/bb;->a:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/ac;->b(Ljava/io/FileDescriptor;)Lcom/google/android/gms/internal/mlkit_common/cc;

    move-result-object v0

    return-object v0
.end method
