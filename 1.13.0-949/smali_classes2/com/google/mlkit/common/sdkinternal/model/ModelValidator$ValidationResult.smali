.class public Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@18.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/common/sdkinternal/model/ModelValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    }
.end annotation

.annotation build Lu2/a;
.end annotation


# static fields
.field public static final c:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;-><init>(Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;Ljava/lang/String;)V

    sput-object v0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->c:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lu2/a;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->a:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    iput-object p2, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->a:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 2
    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult;->a:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    sget-object v1, Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;->OK:Lcom/google/mlkit/common/sdkinternal/model/ModelValidator$ValidationResult$ErrorCode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
