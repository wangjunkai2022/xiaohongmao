.class public abstract Lcom/google/mlkit/common/internal/model/c$b;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/internal/model/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation build Lu2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(JLjava/lang/String;Z)Lcom/google/mlkit/common/internal/model/c$b;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/mlkit/common/internal/model/b;

    invoke-static {p2}, Lcom/google/android/gms/internal/mlkit_common/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/mlkit/common/internal/model/b;-><init>(JLjava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract b()J
    .annotation build Lu2/a;
    .end annotation
.end method

.method public abstract c()Z
    .annotation build Lu2/a;
    .end annotation
.end method
