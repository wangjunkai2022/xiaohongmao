.class public final enum Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum INVALID_COUNTRY_CODE:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field public static final enum NOT_A_NUMBER:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field public static final enum TOO_LONG:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_AFTER_IDD:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_NSN:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

.field private static final synthetic a:[Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const-string v1, "INVALID_COUNTRY_CODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    .line 2
    new-instance v1, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const-string v3, "NOT_A_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->NOT_A_NUMBER:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    .line 3
    new-instance v3, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const-string v5, "TOO_SHORT_AFTER_IDD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    .line 4
    new-instance v5, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const-string v7, "TOO_SHORT_NSN"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    .line 5
    new-instance v7, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const-string v9, "TOO_LONG"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->TOO_LONG:Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    const/4 v9, 0x5

    new-array v9, v9, [Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->a:[Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    return-object p0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;
    .locals 1

    sget-object v0, Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->a:[Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/NumberParseException$ErrorType;

    return-object v0
.end method
