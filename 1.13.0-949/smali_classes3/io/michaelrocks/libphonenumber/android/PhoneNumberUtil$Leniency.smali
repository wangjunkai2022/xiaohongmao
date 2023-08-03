.class public abstract enum Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXACT_GROUPING:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field public static final enum POSSIBLE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field public static final enum STRICT_GROUPING:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field public static final enum VALID:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field private static final synthetic a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$a;

    const-string v1, "POSSIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->POSSIBLE:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 2
    new-instance v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$b;

    const-string v3, "VALID"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->VALID:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 3
    new-instance v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;

    const-string v5, "STRICT_GROUPING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 4
    new-instance v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$d;

    const-string v7, "EXACT_GROUPING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

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

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    return-object p0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;
    .locals 1

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract a(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/k;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "number",
            "candidate",
            "util",
            "matcher"
        }
    .end annotation
.end method
