.class final enum Lcom/google/i18n/phonenumbers/i$b;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/i18n/phonenumbers/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/i18n/phonenumbers/i$b;

.field public static final enum b:Lcom/google/i18n/phonenumbers/i$b;

.field public static final enum c:Lcom/google/i18n/phonenumbers/i$b;

.field private static final synthetic d:[Lcom/google/i18n/phonenumbers/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/i18n/phonenumbers/i$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/i$b;->a:Lcom/google/i18n/phonenumbers/i$b;

    new-instance v1, Lcom/google/i18n/phonenumbers/i$b;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/i18n/phonenumbers/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/i18n/phonenumbers/i$b;->b:Lcom/google/i18n/phonenumbers/i$b;

    new-instance v3, Lcom/google/i18n/phonenumbers/i$b;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/i18n/phonenumbers/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/i18n/phonenumbers/i$b;->c:Lcom/google/i18n/phonenumbers/i$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/i18n/phonenumbers/i$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/google/i18n/phonenumbers/i$b;->d:[Lcom/google/i18n/phonenumbers/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    const-class v0, Lcom/google/i18n/phonenumbers/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/i18n/phonenumbers/i$b;

    return-object p0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/i$b;
    .locals 1

    sget-object v0, Lcom/google/i18n/phonenumbers/i$b;->d:[Lcom/google/i18n/phonenumbers/i$b;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/i$b;

    return-object v0
.end method
