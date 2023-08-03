.class public Lcom/google/common/xml/a;
.super Ljava/lang/Object;
.source "XmlEscapers.java"


# annotations
.annotation build Lh3/a;
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field private static final a:C = '\u0000'

.field private static final b:C = '\u001f'

.field private static final c:Lcom/google/common/escape/f;

.field private static final d:Lcom/google/common/escape/f;

.field private static final e:Lcom/google/common/escape/f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/google/common/escape/g;->b()Lcom/google/common/escape/g$c;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0xfffd

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->d(CC)Lcom/google/common/escape/g$c;

    const-string v2, "\ufffd"

    .line 3
    invoke-virtual {v0, v2}, Lcom/google/common/escape/g$c;->e(Ljava/lang/String;)Lcom/google/common/escape/g$c;

    :goto_0
    const/16 v3, 0x1f

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    if-gt v1, v3, :cond_1

    if-eq v1, v6, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v1, v4, :cond_0

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x26

    const-string v2, "&amp;"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    .line 8
    invoke-virtual {v0}, Lcom/google/common/escape/g$c;->c()Lcom/google/common/escape/f;

    move-result-object v1

    sput-object v1, Lcom/google/common/xml/a;->d:Lcom/google/common/escape/f;

    const/16 v1, 0x27

    const-string v2, "&apos;"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    const/16 v1, 0x22

    const-string v2, "&quot;"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    .line 11
    invoke-virtual {v0}, Lcom/google/common/escape/g$c;->c()Lcom/google/common/escape/f;

    move-result-object v1

    sput-object v1, Lcom/google/common/xml/a;->c:Lcom/google/common/escape/f;

    const-string v1, "&#x9;"

    .line 12
    invoke-virtual {v0, v6, v1}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    const-string v1, "&#xA;"

    .line 13
    invoke-virtual {v0, v5, v1}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    const-string v1, "&#xD;"

    .line 14
    invoke-virtual {v0, v4, v1}, Lcom/google/common/escape/g$c;->b(CLjava/lang/String;)Lcom/google/common/escape/g$c;

    .line 15
    invoke-virtual {v0}, Lcom/google/common/escape/g$c;->c()Lcom/google/common/escape/f;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/a;->e:Lcom/google/common/escape/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/xml/a;->e:Lcom/google/common/escape/f;

    return-object v0
.end method

.method public static b()Lcom/google/common/escape/f;
    .locals 1

    sget-object v0, Lcom/google/common/xml/a;->d:Lcom/google/common/escape/f;

    return-object v0
.end method
