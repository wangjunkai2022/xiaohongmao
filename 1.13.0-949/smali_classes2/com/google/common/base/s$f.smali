.class final enum Lcom/google/common/base/s$f;
.super Ljava/lang/Enum;
.source "Functions.java"

# interfaces
.implements Lcom/google/common/base/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/s$f;",
        ">;",
        "Lcom/google/common/base/q<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/s$f;

.field private static final synthetic b:[Lcom/google/common/base/s$f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/base/s$f;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/s$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/s$f;->a:Lcom/google/common/base/s$f;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/base/s$f;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/base/s$f;->b:[Lcom/google/common/base/s$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/s$f;
    .locals 1

    const-class v0, Lcom/google/common/base/s$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/s$f;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/s$f;
    .locals 1

    sget-object v0, Lcom/google/common/base/s$f;->b:[Lcom/google/common/base/s$f;

    invoke-virtual {v0}, [Lcom/google/common/base/s$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/s$f;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Functions.identity()"

    return-object v0
.end method
