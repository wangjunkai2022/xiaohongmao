.class final enum Lcom/google/common/hash/k$b;
.super Ljava/lang/Enum;
.source "Funnels.java"

# interfaces
.implements Lcom/google/common/hash/Funnel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/k$b;",
        ">;",
        "Lcom/google/common/hash/Funnel<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/k$b;

.field private static final synthetic b:[Lcom/google/common/hash/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/k$b;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/k$b;->a:Lcom/google/common/hash/k$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/k$b;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/hash/k$b;->b:[Lcom/google/common/hash/k$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/k$b;
    .locals 1

    const-class v0, Lcom/google/common/hash/k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/k$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/k$b;
    .locals 1

    sget-object v0, Lcom/google/common/hash/k$b;->b:[Lcom/google/common/hash/k$b;

    invoke-virtual {v0}, [Lcom/google/common/hash/k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/k$b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Integer;Lcom/google/common/hash/a0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/google/common/hash/a0;->putInt(I)Lcom/google/common/hash/a0;

    return-void
.end method

.method public bridge synthetic funnel(Ljava/lang/Object;Lcom/google/common/hash/a0;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/hash/k$b;->a(Ljava/lang/Integer;Lcom/google/common/hash/a0;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Funnels.integerFunnel()"

    return-object v0
.end method
