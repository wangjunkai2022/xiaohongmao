.class public Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final F2:J = 0x1L


# instance fields
.field private A:Z

.field private B:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private C:Z

.field private D:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private E:Z

.field private E2:Z

.field private F:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private G:Z

.field private H:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private I:Z

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:I

.field private M:Z

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Ljava/lang/String;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:Z

.field private T:Ljava/lang/String;

.field private T1:Z

.field private U:Z

.field private V:Ljava/lang/String;

.field private V1:Z

.field private W:Z

.field private a:Z

.field private b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private b1:Ljava/lang/String;

.field private b2:Z

.field private c:Z

.field private d:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private e:Z

.field private f:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private g:Z

.field private g1:Z

.field private g2:Ljava/lang/String;

.field private h:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private i:Z

.field private j:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private k:Z

.field private l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private m:Z

.field private n:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private o:Z

.field private p:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private p1:Z

.field private p2:Z

.field private q:Z

.field private r:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private s:Z

.field private t:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private u:Z

.field private v:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private w:Z

.field private x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private x1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private x2:Z

.field private y:Z

.field private y1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private y2:Z

.field private z:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 3
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->d:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 4
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->f:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 5
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->h:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 6
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->j:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 7
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 8
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->n:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 9
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 10
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->r:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 11
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->t:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 12
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->v:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 13
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 14
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->z:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 15
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->B:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 16
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->D:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 17
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->F:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 18
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->H:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->J:Ljava/lang/String;

    const/4 v1, 0x0

    .line 20
    iput v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->L:I

    .line 21
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->N:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->P:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->R:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b1:Ljava/lang/String;

    .line 27
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p1:Z

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    .line 30
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    .line 31
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g2:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x2:Z

    .line 33
    iput-boolean v1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E2:Z

    return-void
.end method

.method public static newBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addNumberFormat(Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public clearLeadingZeroPossible()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p2:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x2:Z

    return-object p0
.end method

.method public clearMainCountryForCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T1:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    return-object p0
.end method

.method public clearMobileNumberPortableRegion()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y2:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E2:Z

    return-object p0
.end method

.method public clearNationalPrefix()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->Q:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->R:Ljava/lang/String;

    return-object p0
.end method

.method public clearNationalPrefixTransformRule()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->W:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b1:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredExtnPrefix()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->S:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T:Ljava/lang/String;

    return-object p0
.end method

.method public clearPreferredInternationalPrefix()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->O:Z

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->P:Ljava/lang/String;

    return-object p0
.end method

.method public clearSameMobileAndFixedLinePattern()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g1:Z

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p1:Z

    return-object p0
.end method

.method public getCarrierSpecific()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->D:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getCountryCode()I
    .locals 1

    iget v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->L:I

    return v0
.end method

.method public getEmergency()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->v:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->d:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDescBuilder()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getIntlNumberFormatCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntlNumberFormatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g2:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    return v0
.end method

.method public getMobile()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->f:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getMobileNumberPortableRegion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E2:Z

    return v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->R:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b1:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->H:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    return-object p1
.end method

.method public getNumberFormatCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNumberFormatList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    return-object v0
.end method

.method public getPager()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->r:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->n:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->P:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->j:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSameMobileAndFixedLinePattern()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p1:Z

    return v0
.end method

.method public getSharedCost()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getShortCode()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->z:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSmsServices()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->F:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getStandardRate()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->B:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->h:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->t:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCarrierSpecific()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->C:Z

    return v0
.end method

.method public hasCountryCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->K:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->u:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->c:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->a:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->I:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->M:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b2:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p2:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T1:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->e:Z

    return v0
.end method

.method public hasMobileNumberPortableRegion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y2:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->Q:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->U:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->W:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->G:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->q:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->m:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->S:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->O:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->i:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g1:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->k:Z

    return v0
.end method

.method public hasShortCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y:Z

    return v0
.end method

.method public hasSmsServices()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E:Z

    return v0
.end method

.method public hasStandardRate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->A:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->s:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->w:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->o:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatCount()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x2:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    return v0
.end method

.method public isMobileNumberPortableRegion()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result v0

    return v0
.end method

.method public numberFormatSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatCount()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 11
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 13
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 17
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 19
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 20
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 21
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 23
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 24
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 25
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 27
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 29
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 30
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 31
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 33
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 34
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 35
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 37
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 38
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 39
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 40
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 41
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 42
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 43
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 45
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 46
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 49
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 50
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 51
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setShortCode(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 53
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 54
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setStandardRate(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 57
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 58
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 59
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCarrierSpecific(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 61
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 62
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSmsServices(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 65
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 66
    new-instance v0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 69
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 70
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 71
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 73
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 74
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 75
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 76
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 77
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 78
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 79
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 80
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 81
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 82
    :cond_15
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 83
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_16

    .line 84
    new-instance v3, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 85
    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 86
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_16
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_17

    .line 88
    new-instance v2, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 89
    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 90
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    :cond_17
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 92
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 93
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 94
    :cond_18
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 95
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->setMobileNumberPortableRegion(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    return-void
.end method

.method public setCarrierSpecific(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->C:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->D:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setCountryCode(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->K:Z

    .line 2
    iput p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->L:I

    return-object p0
.end method

.method public setEmergency(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->u:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->v:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setFixedLine(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->c:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->d:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setGeneralDesc(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->a:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->I:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->J:Ljava/lang/String;

    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->M:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->N:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b2:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g2:Ljava/lang/String;

    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p2:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x2:Z

    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T1:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    return-object p0
.end method

.method public setMobile(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->e:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->f:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setMobileNumberPortableRegion(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y2:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E2:Z

    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->Q:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->R:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->U:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V:Ljava/lang/String;

    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->W:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b1:Ljava/lang/String;

    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->G:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->H:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPager(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->q:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->r:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPersonalNumber(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->m:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->n:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->S:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T:Ljava/lang/String;

    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->O:Z

    .line 2
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->P:Ljava/lang/String;

    return-object p0
.end method

.method public setPremiumRate(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->i:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->j:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g1:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p1:Z

    return-object p0
.end method

.method public setSharedCost(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->k:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setShortCode(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->z:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setSmsServices(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->F:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setStandardRate(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->A:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->B:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setTollFree(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->h:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setUan(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->s:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->t:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setVoicemail(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->w:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public setVoip(Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->o:Z

    .line 3
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->a:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->c:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->c:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->d:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 7
    :cond_1
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->e:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 8
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->e:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->f:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 11
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g:Z

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->h:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 13
    :cond_3
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->i:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 14
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->i:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->j:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 16
    :cond_4
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->k:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 17
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->k:Z

    if-eqz v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->l:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 19
    :cond_5
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->m:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 20
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->m:Z

    if-eqz v0, :cond_6

    .line 21
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->n:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 22
    :cond_6
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->o:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 23
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->o:Z

    if-eqz v0, :cond_7

    .line 24
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 25
    :cond_7
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->q:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 26
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->q:Z

    if-eqz v0, :cond_8

    .line 27
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->r:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 28
    :cond_8
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->s:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 29
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->s:Z

    if-eqz v0, :cond_9

    .line 30
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->t:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 31
    :cond_9
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->u:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 32
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->u:Z

    if-eqz v0, :cond_a

    .line 33
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->v:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 34
    :cond_a
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->w:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 35
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->w:Z

    if-eqz v0, :cond_b

    .line 36
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 37
    :cond_b
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 38
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y:Z

    if-eqz v0, :cond_c

    .line 39
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->z:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 40
    :cond_c
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->A:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->A:Z

    if-eqz v0, :cond_d

    .line 42
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->B:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 43
    :cond_d
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->C:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 44
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->C:Z

    if-eqz v0, :cond_e

    .line 45
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->D:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 46
    :cond_e
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E:Z

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->F:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 49
    :cond_f
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->G:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 50
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->G:Z

    if-eqz v0, :cond_10

    .line 51
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->H:Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 52
    :cond_10
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->J:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 53
    iget v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->L:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->N:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 55
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->O:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 56
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->O:Z

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->P:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 58
    :cond_11
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->Q:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 59
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->Q:Z

    if-eqz v0, :cond_12

    .line 60
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->R:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 61
    :cond_12
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->S:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 62
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->S:Z

    if-eqz v0, :cond_13

    .line 63
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->T:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 64
    :cond_13
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->U:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 65
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->U:Z

    if-eqz v0, :cond_14

    .line 66
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 67
    :cond_14
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->W:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 68
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->W:Z

    if-eqz v0, :cond_15

    .line 69
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b1:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 70
    :cond_15
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->p1:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v0

    .line 72
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_16

    .line 73
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x1:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_16
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v0

    .line 75
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :goto_1
    if-ge v1, v0, :cond_17

    .line 76
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->y1:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v2, p1}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_17
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->V1:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 78
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b2:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 79
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->b2:Z

    if-eqz v0, :cond_18

    .line 80
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->g2:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 81
    :cond_18
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->x2:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 82
    iget-boolean v0, p0, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->E2:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    return-void
.end method
