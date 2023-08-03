.class public Lcom/google/mlkit/common/model/b$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/mlkit/common/model/b$a;->a:Z

    iput-boolean v0, p0, Lcom/google/mlkit/common/model/b$a;->b:Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/mlkit/common/model/b;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/google/mlkit/common/model/b;

    iget-boolean v1, p0, Lcom/google/mlkit/common/model/b$a;->a:Z

    iget-boolean v2, p0, Lcom/google/mlkit/common/model/b$a;->b:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/mlkit/common/model/b;-><init>(ZZLcom/google/mlkit/common/model/h;)V

    return-object v0
.end method

.method public b()Lcom/google/mlkit/common/model/b$a;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x18
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/common/model/b$a;->a:Z

    return-object p0
.end method

.method public c()Lcom/google/mlkit/common/model/b$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/mlkit/common/model/b$a;->b:Z

    return-object p0
.end method
