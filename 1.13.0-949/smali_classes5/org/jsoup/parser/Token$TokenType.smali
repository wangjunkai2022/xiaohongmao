.class public final enum Lorg/jsoup/parser/Token$TokenType;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/Token$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Character:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum Comment:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum Doctype:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum EOF:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum EndTag:Lorg/jsoup/parser/Token$TokenType;

.field public static final enum StartTag:Lorg/jsoup/parser/Token$TokenType;

.field private static final synthetic a:[Lorg/jsoup/parser/Token$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    .line 2
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "StartTag"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    .line 3
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "EndTag"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    .line 4
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Comment"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    .line 5
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "Character"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    .line 6
    new-instance v0, Lorg/jsoup/parser/Token$TokenType;

    const-string v1, "EOF"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/Token$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    .line 7
    invoke-static {}, Lorg/jsoup/parser/Token$TokenType;->a()[Lorg/jsoup/parser/Token$TokenType;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/Token$TokenType;->a:[Lorg/jsoup/parser/Token$TokenType;

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

.method private static synthetic a()[Lorg/jsoup/parser/Token$TokenType;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/jsoup/parser/Token$TokenType;

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Doctype:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->StartTag:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EndTag:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Comment:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->Character:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/Token$TokenType;->EOF:Lorg/jsoup/parser/Token$TokenType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    const-class v0, Lorg/jsoup/parser/Token$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/Token$TokenType;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/Token$TokenType;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/Token$TokenType;->a:[Lorg/jsoup/parser/Token$TokenType;

    invoke-virtual {v0}, [Lorg/jsoup/parser/Token$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/Token$TokenType;

    return-object v0
.end method
