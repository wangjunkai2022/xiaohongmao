.class public final Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat$Builder;
.super Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;
    .locals 0

    return-object p0
.end method

.method public mergeFrom(Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 3
    :cond_0
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6
    invoke-virtual {p1, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 9
    :cond_3
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    .line 11
    :cond_4
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result p1

    invoke-virtual {p0, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lio/michaelrocks/libphonenumber/android/Phonemetadata$NumberFormat;

    :cond_5
    return-object p0
.end method
