.class public final enum Lshaded/org/apache/commons/codec/language/bm/NameType;
.super Ljava/lang/Enum;
.source "NameType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lshaded/org/apache/commons/codec/language/bm/NameType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASHKENAZI:Lshaded/org/apache/commons/codec/language/bm/NameType;

.field public static final enum GENERIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

.field public static final enum SEPHARDIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

.field private static final synthetic b:[Lshaded/org/apache/commons/codec/language/bm/NameType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/NameType;

    const-string v1, "ASHKENAZI"

    const/4 v2, 0x0

    const-string v3, "ash"

    invoke-direct {v0, v1, v2, v3}, Lshaded/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lshaded/org/apache/commons/codec/language/bm/NameType;

    .line 2
    new-instance v1, Lshaded/org/apache/commons/codec/language/bm/NameType;

    const-string v3, "GENERIC"

    const/4 v4, 0x1

    const-string v5, "gen"

    invoke-direct {v1, v3, v4, v5}, Lshaded/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lshaded/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    .line 3
    new-instance v3, Lshaded/org/apache/commons/codec/language/bm/NameType;

    const-string v5, "SEPHARDIC"

    const/4 v6, 0x2

    const-string v7, "sep"

    invoke-direct {v3, v5, v6, v7}, Lshaded/org/apache/commons/codec/language/bm/NameType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lshaded/org/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    const/4 v5, 0x3

    new-array v5, v5, [Lshaded/org/apache/commons/codec/language/bm/NameType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lshaded/org/apache/commons/codec/language/bm/NameType;->b:[Lshaded/org/apache/commons/codec/language/bm/NameType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lshaded/org/apache/commons/codec/language/bm/NameType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    const-class v0, Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lshaded/org/apache/commons/codec/language/bm/NameType;

    return-object p0
.end method

.method public static values()[Lshaded/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/NameType;->b:[Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v0}, [Lshaded/org/apache/commons/codec/language/bm/NameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lshaded/org/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/NameType;->a:Ljava/lang/String;

    return-object v0
.end method
