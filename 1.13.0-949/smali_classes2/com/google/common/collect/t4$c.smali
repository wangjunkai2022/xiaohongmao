.class abstract enum Lcom/google/common/collect/t4$c;
.super Ljava/lang/Enum;
.source "SortedLists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/t4$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/t4$c;

.field public static final enum b:Lcom/google/common/collect/t4$c;

.field public static final enum c:Lcom/google/common/collect/t4$c;

.field public static final enum d:Lcom/google/common/collect/t4$c;

.field public static final enum e:Lcom/google/common/collect/t4$c;

.field private static final synthetic f:[Lcom/google/common/collect/t4$c;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/common/collect/t4$c$a;

    const-string v1, "ANY_PRESENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/t4$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/t4$c;->a:Lcom/google/common/collect/t4$c;

    .line 2
    new-instance v1, Lcom/google/common/collect/t4$c$b;

    const-string v3, "LAST_PRESENT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/collect/t4$c$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/collect/t4$c;->b:Lcom/google/common/collect/t4$c;

    .line 3
    new-instance v3, Lcom/google/common/collect/t4$c$c;

    const-string v5, "FIRST_PRESENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/collect/t4$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/collect/t4$c;->c:Lcom/google/common/collect/t4$c;

    .line 4
    new-instance v5, Lcom/google/common/collect/t4$c$d;

    const-string v7, "FIRST_AFTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/collect/t4$c$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/collect/t4$c;->d:Lcom/google/common/collect/t4$c;

    .line 5
    new-instance v7, Lcom/google/common/collect/t4$c$e;

    const-string v9, "LAST_BEFORE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/collect/t4$c$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/collect/t4$c;->e:Lcom/google/common/collect/t4$c;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/common/collect/t4$c;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/common/collect/t4$c;->f:[Lcom/google/common/collect/t4$c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/collect/t4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/t4$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/t4$c;
    .locals 1

    const-class v0, Lcom/google/common/collect/t4$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/t4$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/t4$c;
    .locals 1

    sget-object v0, Lcom/google/common/collect/t4$c;->f:[Lcom/google/common/collect/t4$c;

    invoke-virtual {v0}, [Lcom/google/common/collect/t4$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/t4$c;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/util/Comparator;Ljava/lang/Object;Ljava/util/List;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;TE;",
            "Ljava/util/List<",
            "+TE;>;I)I"
        }
    .end annotation
.end method
