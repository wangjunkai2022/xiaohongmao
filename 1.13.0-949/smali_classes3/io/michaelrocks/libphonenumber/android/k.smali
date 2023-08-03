.class final Lio/michaelrocks/libphonenumber/android/k;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/k$a;,
        Lio/michaelrocks/libphonenumber/android/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lio/michaelrocks/libphonenumber/android/j;",
        ">;"
    }
.end annotation


# static fields
.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:[Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/String;

.field private final d:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field private e:J

.field private f:Lio/michaelrocks/libphonenumber/android/k$b;

.field private g:Lio/michaelrocks/libphonenumber/android/j;

.field private h:I

.field private final i:Lio/michaelrocks/libphonenumber/android/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->k:Ljava/util/regex/Pattern;

    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->l:Ljava/util/regex/Pattern;

    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->m:Ljava/util/regex/Pattern;

    const-string v0, ":[0-5]\\d"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->n:Ljava/util/regex/Pattern;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    const-string v1, "/+(.*)"

    .line 5
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "(\\([^(]*)"

    .line 6
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    .line 7
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    .line 8
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "\\.+\\p{Z}*([^.]+)"

    .line 9
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "\\p{Z}+(\\P{Z}+)"

    .line 10
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->p:[Ljava/util/regex/Pattern;

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(\\[\uff08\uff3b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")\\]\uff09\uff3d"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v2, v5}, Lio/michaelrocks/libphonenumber/android/k;->n(II)Ljava/lang/String;

    move-result-object v5

    .line 13
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "])?(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "+["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "])?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "+(?:["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "])"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->o:Ljava/util/regex/Pattern;

    .line 14
    invoke-static {v2, v4}, Lio/michaelrocks/libphonenumber/android/k;->n(II)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2, v6}, Lio/michaelrocks/libphonenumber/android/k;->n(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x14

    .line 16
    invoke-static {v2, v5}, Lio/michaelrocks/libphonenumber/android/k;->n(II)Ljava/lang/String;

    move-result-object v2

    .line 17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\p{Nd}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lio/michaelrocks/libphonenumber/android/k;->n(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+\uff0b"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lio/michaelrocks/libphonenumber/android/k;->q:Ljava/util/regex/Pattern;

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(?:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->X:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "util",
            "text",
            "country",
            "leniency",
            "maxTries"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k$b;->a:Lio/michaelrocks/libphonenumber/android/k$b;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->g:Lio/michaelrocks/libphonenumber/android/j;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lio/michaelrocks/libphonenumber/android/k;->h:I

    .line 5
    new-instance v1, Lio/michaelrocks/libphonenumber/android/internal/c;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Lio/michaelrocks/libphonenumber/android/internal/c;-><init>(I)V

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->i:Lio/michaelrocks/libphonenumber/android/internal/c;

    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-ltz v2, :cond_1

    .line 6
    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/k;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    .line 7
    :goto_0
    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    .line 8
    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/k;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lio/michaelrocks/libphonenumber/android/k;->d:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    .line 10
    iput-wide p5, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 12
    :cond_2
    throw v0
.end method

.method static a(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "util",
            "number",
            "normalizedCandidate",
            "formattedNumberGroups"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->a0:Ljava/util/regex/Pattern;

    .line 2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    array-length v0, p2

    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_0
    array-length v0, p2

    sub-int/2addr v0, v1

    .line 4
    :goto_0
    array-length v2, p2

    if-eq v2, v1, :cond_5

    aget-object v2, p2, v0

    .line 5
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->T(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    array-length p0, p3

    sub-int/2addr p0, v1

    :goto_1
    const/4 p1, 0x0

    if-lez p0, :cond_3

    if-ltz v0, :cond_3

    .line 8
    aget-object v2, p2, v0

    aget-object v3, p3, p0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return p1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    if-ltz v0, :cond_4

    .line 9
    aget-object p0, p2, v0

    aget-object p2, p3, p1

    .line 10
    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return v1
.end method

.method static b(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "util",
            "number",
            "normalizedCandidate",
            "formattedNumberGroups"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    .line 4
    :goto_1
    array-length v3, p3

    if-ge v0, v3, :cond_3

    .line 5
    aget-object v3, p3, v0

    invoke-virtual {p2, v3, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-gez v1, :cond_1

    return v2

    .line 6
    :cond_1
    aget-object v3, p3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 8
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->Y(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 9
    invoke-virtual {p0, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->U(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 10
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->T(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p0

    .line 12
    aget-object p1, p3, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method static d(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "candidate"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, 0x1

    .line 2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 4
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    .line 5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    add-int/2addr v0, v5

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_4
    return v5
.end method

.method static e(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "number",
            "candidate",
            "util"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x58

    const/16 v5, 0x78

    if-eq v2, v5, :cond_0

    if-ne v2, v4, :cond_4

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2

    if-ne v6, v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p0, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->s0(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    move-result-object v1

    sget-object v4, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;->NSN_MATCH:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$MatchType;

    if-eq v1, v4, :cond_3

    return v0

    :cond_3
    move v1, v2

    :cond_4
    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    return v3
.end method

.method private f(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "candidate",
            "offset"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k;->p:[Ljava/util/regex/Pattern;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 3
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_3

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1

    .line 4
    sget-object v6, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->R:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v9

    invoke-interface {p1, v2, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 6
    invoke-static {v6, v9}, Lio/michaelrocks/libphonenumber/android/k;->q(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 7
    invoke-direct {p0, v6, p2}, Lio/michaelrocks/libphonenumber/android/k;->p(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    .line 8
    :cond_0
    iget-wide v9, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    const/4 v6, 0x0

    .line 9
    :cond_1
    sget-object v9, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->R:Ljava/util/regex/Pattern;

    .line 10
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-static {v9, v10}, Lio/michaelrocks/libphonenumber/android/k;->q(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 12
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lio/michaelrocks/libphonenumber/android/k;->p(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v9

    if-eqz v9, :cond_2

    return-object v9

    .line 13
    :cond_2
    iget-wide v9, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    sub-long/2addr v9, v7

    iput-wide v9, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private g(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "candidate",
            "offset"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k;->m:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v2, Lio/michaelrocks/libphonenumber/android/k;->n:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/k;->p(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lio/michaelrocks/libphonenumber/android/k;->f(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object p1

    return-object p1
.end method

.method private h(I)Lio/michaelrocks/libphonenumber/android/j;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k;->j:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    :goto_0
    iget-wide v1, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    .line 4
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-interface {v1, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->P:Ljava/util/regex/Pattern;

    invoke-static {v2, v1}, Lio/michaelrocks/libphonenumber/android/k;->q(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-direct {p0, v1, p1}, Lio/michaelrocks/libphonenumber/android/k;->g(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    .line 7
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr p1, v1

    .line 8
    iget-wide v1, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lio/michaelrocks/libphonenumber/android/k;->e:J

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static i(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "util",
            "number"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->q(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x3b

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    :cond_0
    const/16 v0, 0x2d

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 5
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "util",
            "number",
            "formattingPattern"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->T(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->y(Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "-"

    .line 3
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static k(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "character"
        }
    .end annotation

    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static l(C)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "letter"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object p0

    .line 3
    sget-object v0, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method static m(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "util"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->Y(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->Q(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 4
    :cond_1
    invoke-virtual {p1, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->T(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->d(Ljava/util/List;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 6
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 7
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->D(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    .line 10
    :cond_3
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->M0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 12
    invoke-virtual {p1, v1, v0, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->I0(Ljava/lang/StringBuilder;Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0

    :cond_4
    return v2
.end method

.method private static n(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lower",
            "upper"
        }
    .end annotation

    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private p(Ljava/lang/CharSequence;I)Lio/michaelrocks/libphonenumber/android/j;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "candidate",
            "offset"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lio/michaelrocks/libphonenumber/android/k;->o:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lio/michaelrocks/libphonenumber/android/k;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->d:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    sget-object v2, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->VALID:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    if-lez p2, :cond_2

    .line 3
    sget-object v1, Lio/michaelrocks/libphonenumber/android/k;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 5
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/k;->k(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/k;->l(C)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    .line 6
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 7
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 8
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/k;->b:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 9
    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/k;->k(C)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lio/michaelrocks/libphonenumber/android/k;->l(C)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return-object v0

    .line 10
    :cond_4
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/k;->c:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->Q0(Ljava/lang/CharSequence;Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/k;->d:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/k;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3, p0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;->a(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/k;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 13
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearRawInput()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 14
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;

    .line 15
    new-instance v2, Lio/michaelrocks/libphonenumber/android/j;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p2, p1, v1}, Lio/michaelrocks/libphonenumber/android/j;-><init>(ILjava/lang/String;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lio/michaelrocks/libphonenumber/android/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    :cond_5
    :goto_0
    return-object v0
.end method

.method private static q(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pattern",
            "candidate"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-interface {p1, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method c(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/k$a;)Z
    .locals 7
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
            "checker"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p2, v0}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->L0(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 2
    invoke-static {p3, p1}, Lio/michaelrocks/libphonenumber/android/k;->i(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p4, p3, p1, p2, v1}, Lio/michaelrocks/libphonenumber/android/k$a;->a(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->S()Lio/michaelrocks/libphonenumber/android/h;

    move-result-object v1

    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-interface {v1, v2}, Lio/michaelrocks/libphonenumber/android/h;->c(I)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 5
    invoke-virtual {p3, p1}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->T(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 7
    invoke-virtual {v4}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 8
    iget-object v5, p0, Lio/michaelrocks/libphonenumber/android/k;->i:Lio/michaelrocks/libphonenumber/android/internal/c;

    .line 9
    invoke-virtual {v4, v3}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/michaelrocks/libphonenumber/android/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 10
    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p3, p1, v4}, Lio/michaelrocks/libphonenumber/android/k;->j(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-interface {p4, p3, p1, p2, v4}, Lio/michaelrocks/libphonenumber/android/k$a;->a(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v0

    :cond_3
    return v3
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/k$b;->a:Lio/michaelrocks/libphonenumber/android/k$b;

    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p0, Lio/michaelrocks/libphonenumber/android/k;->h:I

    invoke-direct {p0, v0}, Lio/michaelrocks/libphonenumber/android/k;->h(I)Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v0

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->g:Lio/michaelrocks/libphonenumber/android/j;

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k$b;->c:Lio/michaelrocks/libphonenumber/android/k$b;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lio/michaelrocks/libphonenumber/android/j;->a()I

    move-result v0

    iput v0, p0, Lio/michaelrocks/libphonenumber/android/k;->h:I

    .line 5
    sget-object v0, Lio/michaelrocks/libphonenumber/android/k$b;->b:Lio/michaelrocks/libphonenumber/android/k$b;

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    sget-object v1, Lio/michaelrocks/libphonenumber/android/k$b;->b:Lio/michaelrocks/libphonenumber/android/k$b;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/k;->o()Lio/michaelrocks/libphonenumber/android/j;

    move-result-object v0

    return-object v0
.end method

.method public o()Lio/michaelrocks/libphonenumber/android/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/k;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/k;->g:Lio/michaelrocks/libphonenumber/android/j;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->g:Lio/michaelrocks/libphonenumber/android/j;

    .line 4
    sget-object v1, Lio/michaelrocks/libphonenumber/android/k$b;->a:Lio/michaelrocks/libphonenumber/android/k$b;

    iput-object v1, p0, Lio/michaelrocks/libphonenumber/android/k;->f:Lio/michaelrocks/libphonenumber/android/k$b;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
