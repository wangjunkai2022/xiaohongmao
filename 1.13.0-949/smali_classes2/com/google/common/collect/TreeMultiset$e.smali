.class abstract enum Lcom/google/common/collect/TreeMultiset$e;
.super Ljava/lang/Enum;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeMultiset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/TreeMultiset$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/TreeMultiset$e;

.field public static final enum b:Lcom/google/common/collect/TreeMultiset$e;

.field private static final synthetic c:[Lcom/google/common/collect/TreeMultiset$e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/collect/TreeMultiset$e$a;

    const-string v1, "SIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/TreeMultiset$e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/TreeMultiset$e;->a:Lcom/google/common/collect/TreeMultiset$e;

    .line 2
    new-instance v1, Lcom/google/common/collect/TreeMultiset$e$b;

    const-string v3, "DISTINCT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/TreeMultiset$e$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/TreeMultiset$e;->b:Lcom/google/common/collect/TreeMultiset$e;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/collect/TreeMultiset$e;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/collect/TreeMultiset$e;->c:[Lcom/google/common/collect/TreeMultiset$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/TreeMultiset$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/TreeMultiset$e;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    const-class v0, Lcom/google/common/collect/TreeMultiset$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/TreeMultiset$e;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/TreeMultiset$e;
    .locals 1

    sget-object v0, Lcom/google/common/collect/TreeMultiset$e;->c:[Lcom/google/common/collect/TreeMultiset$e;

    invoke-virtual {v0}, [Lcom/google/common/collect/TreeMultiset$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/TreeMultiset$e;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/common/collect/TreeMultiset$f;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)I"
        }
    .end annotation
.end method

.method abstract b(Lcom/google/common/collect/TreeMultiset$f;)J
    .param p1    # Lcom/google/common/collect/TreeMultiset$f;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/TreeMultiset$f<",
            "*>;)J"
        }
    .end annotation
.end method
