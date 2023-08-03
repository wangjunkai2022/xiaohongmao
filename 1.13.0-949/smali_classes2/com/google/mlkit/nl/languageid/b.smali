.class public Lcom/google/mlkit/nl/languageid/b;
.super Ljava/lang/Object;
.source "com.google.mlkit:language-id-common@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/languageid/b$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/google/mlkit/nl/languageid/b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Float;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/nl/languageid/b$a;

    invoke-direct {v0}, Lcom/google/mlkit/nl/languageid/b$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/mlkit/nl/languageid/b$a;->a()Lcom/google/mlkit/nl/languageid/b;

    move-result-object v0

    sput-object v0, Lcom/google/mlkit/nl/languageid/b;->c:Lcom/google/mlkit/nl/languageid/b;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Float;Ljava/util/concurrent/Executor;Lcom/google/mlkit/nl/languageid/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/b;->a:Ljava/lang/Float;

    iput-object p2, p0, Lcom/google/mlkit/nl/languageid/b;->b:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Float;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/b;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public b()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lu2/a;
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/b;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/mlkit/nl/languageid/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/mlkit/nl/languageid/b;

    .line 3
    iget-object v1, p1, Lcom/google/mlkit/nl/languageid/b;->a:Ljava/lang/Float;

    iget-object v3, p0, Lcom/google/mlkit/nl/languageid/b;->a:Ljava/lang/Float;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/mlkit/nl/languageid/b;->b:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/b;->b:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/b;->a:Ljava/lang/Float;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/b;->b:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->c([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
