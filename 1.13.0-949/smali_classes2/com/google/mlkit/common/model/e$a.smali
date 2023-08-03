.class public Lcom/google/mlkit/common/model/e$a;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/model/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Lu2/a;
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;

.field private final b:Lo3/b;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lo3/b;)V
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lo3/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RemoteT:",
            "Lcom/google/mlkit/common/model/d;",
            ">(",
            "Ljava/lang/Class<",
            "TRemoteT;>;",
            "Lo3/b<",
            "+",
            "Lcom/google/mlkit/common/sdkinternal/model/k<",
            "TRemoteT;>;>;)V"
        }
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/model/e$a;->a:Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/mlkit/common/model/e$a;->b:Lo3/b;

    return-void
.end method


# virtual methods
.method final a()Lo3/b;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/e$a;->b:Lo3/b;

    return-object v0
.end method

.method final b()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/common/model/e$a;->a:Ljava/lang/Class;

    return-object v0
.end method
