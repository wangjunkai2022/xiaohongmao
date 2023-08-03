.class public Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneMetadataCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection$Builder;
    }
.end annotation


# static fields
.field private static final b:J = 0x1L


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection$Builder;
    .locals 1

    new-instance v0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection$Builder;

    invoke-direct {v0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addMetadata(Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;)Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public clear()Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;
    .locals 1

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public getMetadataCount()I
    .locals 1

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMetadataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    new-instance v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-direct {v2}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;-><init>()V

    .line 3
    invoke-virtual {v2, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->readExternal(Ljava/io/ObjectInput;)V

    .line 4
    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objectOutput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->getMetadataCount()I

    move-result v0

    .line 2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3
    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadataCollection;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2, p1}, Lio/michaelrocks/libphonenumber/android/Phonemetadata$PhoneMetadata;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
