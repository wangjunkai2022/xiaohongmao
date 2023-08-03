.class public Lcom/google/mlkit/common/sdkinternal/c$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/a;


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/a;)V
    .locals 0
    .param p1    # Lcom/google/mlkit/common/sdkinternal/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/c$a;->a:Lcom/google/mlkit/common/sdkinternal/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/c;
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    const-string v0, "common"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/vb;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/kb;

    move-result-object v6

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/c;

    iget-object v4, p0, Lcom/google/mlkit/common/sdkinternal/c$a;->a:Lcom/google/mlkit/common/sdkinternal/a;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/common/sdkinternal/c;-><init>(Ljava/lang/Object;ILcom/google/mlkit/common/sdkinternal/a;Ljava/lang/Runnable;Lcom/google/android/gms/internal/mlkit_common/kb;)V

    return-object v0
.end method
