.class public Lcom/google/i18n/phonenumbers/b;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final A:I = 0x3

.field private static final B:Ljava/lang/String; = "\u2008"

.field private static final C:Ljava/util/regex/Pattern;

.field private static final w:C = ' '

.field private static final x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/StringBuilder;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:Ljava/lang/StringBuilder;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private final j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private k:Ljava/lang/String;

.field private l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/StringBuilder;

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/StringBuilder;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/google/i18n/phonenumbers/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->newBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "<ignored>"

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setId(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->setInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;->build()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b;->y:Ljava/util/regex/Pattern;

    const-string v0, "[- ]"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b;->z:Ljava/util/regex/Pattern;

    const-string v0, "\u2008"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/b;->C:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    .line 4
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->g:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    .line 10
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    .line 11
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->M()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 12
    iput v1, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    .line 13
    iput v1, p0, Lcom/google/i18n/phonenumbers/b;->o:I

    .line 14
    iput v1, p0, Lcom/google/i18n/phonenumbers/b;->p:I

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    .line 16
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->r:Z

    .line 17
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    .line 20
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/c;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/c;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    .line 21
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->k:Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/b;->m(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 23
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method private a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->r:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    .line 3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/b;->j(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/b;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    .line 3
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4
    iput v0, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    .line 5
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->m(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->Y(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "001"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->Q(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/b;->m(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 11
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\+|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 2
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 8
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 11
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v4, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return v1

    :cond_1
    return v2
.end method

.method private i(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/i18n/phonenumbers/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private j(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 3
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 4
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 5
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 6
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 7
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 8
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->D(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_3

    .line 11
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    if-nez v2, :cond_4

    .line 13
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->D(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 15
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    sget-object v2, Lcom/google/i18n/phonenumbers/b;->y:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 17
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/b;->w(Ljava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "999999999999999"

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string p1, ""

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "9"

    const-string v0, "\u2008"

    .line 6
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private m(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->F(Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->Y(I)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->j:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->R(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lcom/google/i18n/phonenumbers/b;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p1
.end method

.method private o()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    const-string v2, ""

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/b;->r(C)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/google/i18n/phonenumbers/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r(C)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/google/i18n/phonenumbers/b;->C:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    iput p1, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    .line 6
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, v3, p1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v2, :cond_1

    .line 8
    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    :cond_1
    const-string p1, ""

    .line 9
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private s(CZ)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/b;->o:I

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/b;->t(C)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    .line 5
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->g:Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/b;->x(CZ)C

    move-result p1

    .line 7
    :goto_0
    iget-boolean p2, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    if-nez p2, :cond_5

    .line 8
    iget-boolean p1, p0, Lcom/google/i18n/phonenumbers/b;->g:Z

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_3
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 17
    :cond_5
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-eqz p2, :cond_e

    if-eq p2, v2, :cond_e

    const/4 v0, 0x2

    if-eq p2, v0, :cond_e

    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    goto :goto_1

    .line 18
    :cond_6
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->f()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 19
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    .line 20
    :goto_1
    iget-boolean p2, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    if-eqz p2, :cond_8

    .line 21
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->e()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 22
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    .line 23
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24
    :cond_8
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 25
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/b;->r(C)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/b;->g()Ljava/lang/String;

    move-result-object p2

    .line 27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    return-object p2

    .line 28
    :cond_9
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/google/i18n/phonenumbers/b;->w(Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->v()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 30
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->o()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 31
    :cond_a
    iget-boolean p2, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    if-eqz p2, :cond_b

    .line 32
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    .line 34
    :cond_c
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 35
    :cond_d
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->y()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->c()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 37
    :cond_e
    iget-object p1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private t(C)Z
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->I:Ljava/util/regex/Pattern;

    .line 3
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private u()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v3, 0x31

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private v()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 4
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/b;->i(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    iput-object v3, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    .line 8
    sget-object v0, Lcom/google/i18n/phonenumbers/b;->z:Ljava/util/regex/Pattern;

    .line 9
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->r:Z

    .line 12
    iput v2, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    const/4 v0, 0x1

    return v0

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 14
    :cond_2
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    return v2
.end method

.method private w(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    .line 2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 5
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 7
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-virtual {v4, v2}, Lcom/google/i18n/phonenumbers/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 10
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-nez v2, :cond_0

    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private x(CZ)C
    .locals 1

    const/16 v0, 0x2b

    if-ne p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iput p2, p0, Lcom/google/i18n/phonenumbers/b;->p:I

    :cond_1
    return p1
.end method

.method private y()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/b;->u()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    const/16 v3, 0x31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 6
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/i18n/phonenumbers/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 7
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    if-lez v3, :cond_1

    .line 9
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    .line 10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 11
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0
.end method


# virtual methods
.method g()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 2
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->v:Lcom/google/i18n/phonenumbers/internal/c;

    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/i18n/phonenumbers/internal/c;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    sget-object v3, Lcom/google/i18n/phonenumbers/b;->z:Ljava/util/regex/Pattern;

    .line 5
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/i18n/phonenumbers/b;->r:Z

    .line 8
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {p0, v1}, Lcom/google/i18n/phonenumbers/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->J0(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public h()V
    .locals 3

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->d:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    iput v2, p0, Lcom/google/i18n/phonenumbers/b;->n:I

    .line 6
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->c:Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->q:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->t:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    .line 11
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->g:Z

    .line 12
    iput v2, p0, Lcom/google/i18n/phonenumbers/b;->p:I

    .line 13
    iput v2, p0, Lcom/google/i18n/phonenumbers/b;->o:I

    .line 14
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->h:Z

    .line 15
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->i:Z

    .line 16
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    iput-boolean v2, p0, Lcom/google/i18n/phonenumbers/b;->r:Z

    .line 18
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/b;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/b;->m(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/b;->m:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    :cond_0
    return-void
.end method

.method k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/b;->s:Ljava/lang/String;

    return-object v0
.end method

.method public n()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/b;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/i18n/phonenumbers/b;->o:I

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/google/i18n/phonenumbers/b;->p:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/b;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public p(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/b;->s(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    return-object p1
.end method

.method public q(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/i18n/phonenumbers/b;->s(CZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/i18n/phonenumbers/b;->a:Ljava/lang/String;

    return-object p1
.end method
