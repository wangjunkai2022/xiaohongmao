.class public Lcom/google/mlkit/common/model/a$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/mlkit/common/model/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/mlkit/common/model/f;)V
    .locals 0
    .param p1    # Lcom/google/mlkit/common/model/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/u;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/mlkit/common/model/a$a;->a:Lcom/google/mlkit/common/model/f;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/mlkit/common/model/a;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/common/model/a;

    iget-object v1, p0, Lcom/google/mlkit/common/model/a$a;->a:Lcom/google/mlkit/common/model/f;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/model/a;-><init>(Lcom/google/mlkit/common/model/f;Lcom/google/mlkit/common/model/g;)V

    return-object v0
.end method
