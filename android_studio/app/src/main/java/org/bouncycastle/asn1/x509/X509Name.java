package org.bouncycastle.asn1.x509;

import androidx.exifinterface.media.ExifInterface;
import com.qennnsad.aknkaksd.presentation.module.auth.a;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.ASN1Object;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1Primitive;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.ASN1Set;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.ASN1TaggedObject;
import org.bouncycastle.asn1.ASN1UniversalString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.asn1.DERSet;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x500.X500Name;
import org.bouncycastle.util.Strings;
import org.bouncycastle.util.encoders.Hex;

/* loaded from: classes4.dex */
public class X509Name extends ASN1Object {
    public static final ASN1ObjectIdentifier BUSINESS_CATEGORY;
    public static final ASN1ObjectIdentifier C;
    public static final ASN1ObjectIdentifier CN;
    public static final ASN1ObjectIdentifier COUNTRY_OF_CITIZENSHIP;
    public static final ASN1ObjectIdentifier COUNTRY_OF_RESIDENCE;
    public static final ASN1ObjectIdentifier DATE_OF_BIRTH;
    public static final ASN1ObjectIdentifier DC;
    public static final ASN1ObjectIdentifier DMD_NAME;
    public static final ASN1ObjectIdentifier DN_QUALIFIER;
    public static final Hashtable DefaultLookUp;
    public static boolean DefaultReverse;
    public static final Hashtable DefaultSymbols;
    public static final ASN1ObjectIdentifier E;
    public static final ASN1ObjectIdentifier EmailAddress;
    private static final Boolean FALSE;
    public static final ASN1ObjectIdentifier GENDER;
    public static final ASN1ObjectIdentifier GENERATION;
    public static final ASN1ObjectIdentifier GIVENNAME;
    public static final ASN1ObjectIdentifier INITIALS;
    public static final ASN1ObjectIdentifier L;
    public static final ASN1ObjectIdentifier NAME;
    public static final ASN1ObjectIdentifier NAME_AT_BIRTH;
    public static final ASN1ObjectIdentifier O;
    public static final Hashtable OIDLookUp;
    public static final ASN1ObjectIdentifier OU;
    public static final ASN1ObjectIdentifier PLACE_OF_BIRTH;
    public static final ASN1ObjectIdentifier POSTAL_ADDRESS;
    public static final ASN1ObjectIdentifier POSTAL_CODE;
    public static final ASN1ObjectIdentifier PSEUDONYM;
    public static final Hashtable RFC1779Symbols;
    public static final Hashtable RFC2253Symbols;
    public static final ASN1ObjectIdentifier SERIALNUMBER;
    public static final ASN1ObjectIdentifier SN;
    public static final ASN1ObjectIdentifier ST;
    public static final ASN1ObjectIdentifier STREET;
    public static final ASN1ObjectIdentifier SURNAME;
    public static final Hashtable SymbolLookUp;
    public static final ASN1ObjectIdentifier T;
    public static final ASN1ObjectIdentifier TELEPHONE_NUMBER;
    private static final Boolean TRUE;
    public static final ASN1ObjectIdentifier UID;
    public static final ASN1ObjectIdentifier UNIQUE_IDENTIFIER;
    public static final ASN1ObjectIdentifier UnstructuredAddress;
    public static final ASN1ObjectIdentifier UnstructuredName;
    private Vector added;
    private X509NameEntryConverter converter;
    private int hashCodeValue;
    private boolean isHashCodeCalculated;
    private Vector ordering;
    private ASN1Sequence seq;
    private Vector values;

    static {
        ASN1ObjectIdentifier aSN1ObjectIdentifier = new ASN1ObjectIdentifier("2.5.4.6");
        C = aSN1ObjectIdentifier;
        ASN1ObjectIdentifier aSN1ObjectIdentifier2 = new ASN1ObjectIdentifier("2.5.4.10");
        O = aSN1ObjectIdentifier2;
        ASN1ObjectIdentifier aSN1ObjectIdentifier3 = new ASN1ObjectIdentifier("2.5.4.11");
        OU = aSN1ObjectIdentifier3;
        ASN1ObjectIdentifier aSN1ObjectIdentifier4 = new ASN1ObjectIdentifier("2.5.4.12");
        T = aSN1ObjectIdentifier4;
        ASN1ObjectIdentifier aSN1ObjectIdentifier5 = new ASN1ObjectIdentifier("2.5.4.3");
        CN = aSN1ObjectIdentifier5;
        ASN1ObjectIdentifier aSN1ObjectIdentifier6 = new ASN1ObjectIdentifier("2.5.4.5");
        SN = aSN1ObjectIdentifier6;
        ASN1ObjectIdentifier aSN1ObjectIdentifier7 = new ASN1ObjectIdentifier("2.5.4.9");
        STREET = aSN1ObjectIdentifier7;
        SERIALNUMBER = aSN1ObjectIdentifier6;
        ASN1ObjectIdentifier aSN1ObjectIdentifier8 = new ASN1ObjectIdentifier("2.5.4.7");
        L = aSN1ObjectIdentifier8;
        ASN1ObjectIdentifier aSN1ObjectIdentifier9 = new ASN1ObjectIdentifier("2.5.4.8");
        ST = aSN1ObjectIdentifier9;
        ASN1ObjectIdentifier aSN1ObjectIdentifier10 = new ASN1ObjectIdentifier("2.5.4.4");
        SURNAME = aSN1ObjectIdentifier10;
        ASN1ObjectIdentifier aSN1ObjectIdentifier11 = new ASN1ObjectIdentifier("2.5.4.42");
        GIVENNAME = aSN1ObjectIdentifier11;
        ASN1ObjectIdentifier aSN1ObjectIdentifier12 = new ASN1ObjectIdentifier("2.5.4.43");
        INITIALS = aSN1ObjectIdentifier12;
        ASN1ObjectIdentifier aSN1ObjectIdentifier13 = new ASN1ObjectIdentifier("2.5.4.44");
        GENERATION = aSN1ObjectIdentifier13;
        ASN1ObjectIdentifier aSN1ObjectIdentifier14 = new ASN1ObjectIdentifier("2.5.4.45");
        UNIQUE_IDENTIFIER = aSN1ObjectIdentifier14;
        ASN1ObjectIdentifier aSN1ObjectIdentifier15 = new ASN1ObjectIdentifier("2.5.4.15");
        BUSINESS_CATEGORY = aSN1ObjectIdentifier15;
        ASN1ObjectIdentifier aSN1ObjectIdentifier16 = new ASN1ObjectIdentifier("2.5.4.17");
        POSTAL_CODE = aSN1ObjectIdentifier16;
        ASN1ObjectIdentifier aSN1ObjectIdentifier17 = new ASN1ObjectIdentifier("2.5.4.46");
        DN_QUALIFIER = aSN1ObjectIdentifier17;
        ASN1ObjectIdentifier aSN1ObjectIdentifier18 = new ASN1ObjectIdentifier("2.5.4.65");
        PSEUDONYM = aSN1ObjectIdentifier18;
        ASN1ObjectIdentifier aSN1ObjectIdentifier19 = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.1");
        DATE_OF_BIRTH = aSN1ObjectIdentifier19;
        ASN1ObjectIdentifier aSN1ObjectIdentifier20 = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.2");
        PLACE_OF_BIRTH = aSN1ObjectIdentifier20;
        ASN1ObjectIdentifier aSN1ObjectIdentifier21 = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.3");
        GENDER = aSN1ObjectIdentifier21;
        ASN1ObjectIdentifier aSN1ObjectIdentifier22 = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.4");
        COUNTRY_OF_CITIZENSHIP = aSN1ObjectIdentifier22;
        ASN1ObjectIdentifier aSN1ObjectIdentifier23 = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.9.5");
        COUNTRY_OF_RESIDENCE = aSN1ObjectIdentifier23;
        ASN1ObjectIdentifier aSN1ObjectIdentifier24 = new ASN1ObjectIdentifier("1.3.36.8.3.14");
        NAME_AT_BIRTH = aSN1ObjectIdentifier24;
        ASN1ObjectIdentifier aSN1ObjectIdentifier25 = new ASN1ObjectIdentifier("2.5.4.16");
        POSTAL_ADDRESS = aSN1ObjectIdentifier25;
        DMD_NAME = new ASN1ObjectIdentifier("2.5.4.54");
        ASN1ObjectIdentifier aSN1ObjectIdentifier26 = X509ObjectIdentifiers.id_at_telephoneNumber;
        TELEPHONE_NUMBER = aSN1ObjectIdentifier26;
        ASN1ObjectIdentifier aSN1ObjectIdentifier27 = X509ObjectIdentifiers.id_at_name;
        NAME = aSN1ObjectIdentifier27;
        ASN1ObjectIdentifier aSN1ObjectIdentifier28 = PKCSObjectIdentifiers.pkcs_9_at_emailAddress;
        EmailAddress = aSN1ObjectIdentifier28;
        ASN1ObjectIdentifier aSN1ObjectIdentifier29 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredName;
        UnstructuredName = aSN1ObjectIdentifier29;
        ASN1ObjectIdentifier aSN1ObjectIdentifier30 = PKCSObjectIdentifiers.pkcs_9_at_unstructuredAddress;
        UnstructuredAddress = aSN1ObjectIdentifier30;
        E = aSN1ObjectIdentifier28;
        ASN1ObjectIdentifier aSN1ObjectIdentifier31 = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.25");
        DC = aSN1ObjectIdentifier31;
        ASN1ObjectIdentifier aSN1ObjectIdentifier32 = new ASN1ObjectIdentifier("0.9.2342.19200300.100.1.1");
        UID = aSN1ObjectIdentifier32;
        DefaultReverse = false;
        Hashtable hashtable = new Hashtable();
        DefaultSymbols = hashtable;
        Hashtable hashtable2 = new Hashtable();
        RFC2253Symbols = hashtable2;
        Hashtable hashtable3 = new Hashtable();
        RFC1779Symbols = hashtable3;
        Hashtable hashtable4 = new Hashtable();
        DefaultLookUp = hashtable4;
        OIDLookUp = hashtable;
        SymbolLookUp = hashtable4;
        TRUE = new Boolean(true);
        FALSE = new Boolean(false);
        hashtable.put(aSN1ObjectIdentifier, "C");
        hashtable.put(aSN1ObjectIdentifier2, "O");
        hashtable.put(aSN1ObjectIdentifier4, ExifInterface.GPS_DIRECTION_TRUE);
        hashtable.put(aSN1ObjectIdentifier3, "OU");
        hashtable.put(aSN1ObjectIdentifier5, "CN");
        hashtable.put(aSN1ObjectIdentifier8, "L");
        hashtable.put(aSN1ObjectIdentifier9, "ST");
        hashtable.put(aSN1ObjectIdentifier6, "SERIALNUMBER");
        hashtable.put(aSN1ObjectIdentifier28, ExifInterface.LONGITUDE_EAST);
        hashtable.put(aSN1ObjectIdentifier31, "DC");
        hashtable.put(aSN1ObjectIdentifier32, "UID");
        hashtable.put(aSN1ObjectIdentifier7, "STREET");
        hashtable.put(aSN1ObjectIdentifier10, "SURNAME");
        hashtable.put(aSN1ObjectIdentifier11, "GIVENNAME");
        hashtable.put(aSN1ObjectIdentifier12, "INITIALS");
        hashtable.put(aSN1ObjectIdentifier13, "GENERATION");
        hashtable.put(aSN1ObjectIdentifier30, "unstructuredAddress");
        hashtable.put(aSN1ObjectIdentifier29, "unstructuredName");
        hashtable.put(aSN1ObjectIdentifier14, "UniqueIdentifier");
        hashtable.put(aSN1ObjectIdentifier17, "DN");
        hashtable.put(aSN1ObjectIdentifier18, "Pseudonym");
        hashtable.put(aSN1ObjectIdentifier25, "PostalAddress");
        hashtable.put(aSN1ObjectIdentifier24, "NameAtBirth");
        hashtable.put(aSN1ObjectIdentifier22, "CountryOfCitizenship");
        hashtable.put(aSN1ObjectIdentifier23, "CountryOfResidence");
        hashtable.put(aSN1ObjectIdentifier21, "Gender");
        hashtable.put(aSN1ObjectIdentifier20, "PlaceOfBirth");
        hashtable.put(aSN1ObjectIdentifier19, "DateOfBirth");
        hashtable.put(aSN1ObjectIdentifier16, "PostalCode");
        hashtable.put(aSN1ObjectIdentifier15, "BusinessCategory");
        hashtable.put(aSN1ObjectIdentifier26, "TelephoneNumber");
        hashtable.put(aSN1ObjectIdentifier27, "Name");
        hashtable2.put(aSN1ObjectIdentifier, "C");
        hashtable2.put(aSN1ObjectIdentifier2, "O");
        hashtable2.put(aSN1ObjectIdentifier3, "OU");
        hashtable2.put(aSN1ObjectIdentifier5, "CN");
        hashtable2.put(aSN1ObjectIdentifier8, "L");
        hashtable2.put(aSN1ObjectIdentifier9, "ST");
        hashtable2.put(aSN1ObjectIdentifier7, "STREET");
        hashtable2.put(aSN1ObjectIdentifier31, "DC");
        hashtable2.put(aSN1ObjectIdentifier32, "UID");
        hashtable3.put(aSN1ObjectIdentifier, "C");
        hashtable3.put(aSN1ObjectIdentifier2, "O");
        hashtable3.put(aSN1ObjectIdentifier3, "OU");
        hashtable3.put(aSN1ObjectIdentifier5, "CN");
        hashtable3.put(aSN1ObjectIdentifier8, "L");
        hashtable3.put(aSN1ObjectIdentifier9, "ST");
        hashtable3.put(aSN1ObjectIdentifier7, "STREET");
        hashtable4.put("c", aSN1ObjectIdentifier);
        hashtable4.put("o", aSN1ObjectIdentifier2);
        hashtable4.put("t", aSN1ObjectIdentifier4);
        hashtable4.put("ou", aSN1ObjectIdentifier3);
        hashtable4.put(a.f51009a, aSN1ObjectIdentifier5);
        hashtable4.put("l", aSN1ObjectIdentifier8);
        hashtable4.put("st", aSN1ObjectIdentifier9);
        hashtable4.put("sn", aSN1ObjectIdentifier6);
        hashtable4.put("serialnumber", aSN1ObjectIdentifier6);
        hashtable4.put("street", aSN1ObjectIdentifier7);
        hashtable4.put("emailaddress", aSN1ObjectIdentifier28);
        hashtable4.put("dc", aSN1ObjectIdentifier31);
        hashtable4.put("e", aSN1ObjectIdentifier28);
        hashtable4.put("uid", aSN1ObjectIdentifier32);
        hashtable4.put("surname", aSN1ObjectIdentifier10);
        hashtable4.put("givenname", aSN1ObjectIdentifier11);
        hashtable4.put("initials", aSN1ObjectIdentifier12);
        hashtable4.put("generation", aSN1ObjectIdentifier13);
        hashtable4.put("unstructuredaddress", aSN1ObjectIdentifier30);
        hashtable4.put("unstructuredname", aSN1ObjectIdentifier29);
        hashtable4.put("uniqueidentifier", aSN1ObjectIdentifier14);
        hashtable4.put("dn", aSN1ObjectIdentifier17);
        hashtable4.put("pseudonym", aSN1ObjectIdentifier18);
        hashtable4.put("postaladdress", aSN1ObjectIdentifier25);
        hashtable4.put("nameofbirth", aSN1ObjectIdentifier24);
        hashtable4.put("countryofcitizenship", aSN1ObjectIdentifier22);
        hashtable4.put("countryofresidence", aSN1ObjectIdentifier23);
        hashtable4.put("gender", aSN1ObjectIdentifier21);
        hashtable4.put("placeofbirth", aSN1ObjectIdentifier20);
        hashtable4.put("dateofbirth", aSN1ObjectIdentifier19);
        hashtable4.put("postalcode", aSN1ObjectIdentifier16);
        hashtable4.put("businesscategory", aSN1ObjectIdentifier15);
        hashtable4.put("telephonenumber", aSN1ObjectIdentifier26);
        hashtable4.put("name", aSN1ObjectIdentifier27);
    }

    protected X509Name() {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
    }

    public X509Name(String str) {
        this(DefaultReverse, DefaultLookUp, str);
    }

    public X509Name(String str, X509NameEntryConverter x509NameEntryConverter) {
        this(DefaultReverse, DefaultLookUp, str, x509NameEntryConverter);
    }

    public X509Name(Hashtable hashtable) {
        this((Vector) null, hashtable);
    }

    public X509Name(Vector vector, Hashtable hashtable) {
        this(vector, hashtable, new X509DefaultEntryConverter());
    }

    public X509Name(Vector vector, Hashtable hashtable, X509NameEntryConverter x509NameEntryConverter) {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        if (vector != null) {
            for (int i4 = 0; i4 != vector.size(); i4++) {
                this.ordering.addElement(vector.elementAt(i4));
                this.added.addElement(FALSE);
            }
        } else {
            Enumeration keys = hashtable.keys();
            while (keys.hasMoreElements()) {
                this.ordering.addElement(keys.nextElement());
                this.added.addElement(FALSE);
            }
        }
        for (int i10 = 0; i10 != this.ordering.size(); i10++) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) this.ordering.elementAt(i10);
            if (hashtable.get(aSN1ObjectIdentifier) == null) {
                throw new IllegalArgumentException("No attribute for object id - " + aSN1ObjectIdentifier.getId() + " - passed to distinguished name");
            }
            this.values.addElement(hashtable.get(aSN1ObjectIdentifier));
        }
    }

    public X509Name(Vector vector, Vector vector2) {
        this(vector, vector2, new X509DefaultEntryConverter());
    }

    public X509Name(Vector vector, Vector vector2, X509NameEntryConverter x509NameEntryConverter) {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        if (vector.size() != vector2.size()) {
            throw new IllegalArgumentException("oids vector must be same length as values.");
        }
        for (int i4 = 0; i4 < vector.size(); i4++) {
            this.ordering.addElement(vector.elementAt(i4));
            this.values.addElement(vector2.elementAt(i4));
            this.added.addElement(FALSE);
        }
    }

    public X509Name(ASN1Sequence aSN1Sequence) {
        Vector vector;
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.seq = aSN1Sequence;
        Enumeration objects = aSN1Sequence.getObjects();
        while (objects.hasMoreElements()) {
            ASN1Set aSN1Set = ASN1Set.getInstance(((ASN1Encodable) objects.nextElement()).toASN1Primitive());
            int i4 = 0;
            while (i4 < aSN1Set.size()) {
                ASN1Sequence aSN1Sequence2 = ASN1Sequence.getInstance(aSN1Set.getObjectAt(i4).toASN1Primitive());
                if (aSN1Sequence2.size() != 2) {
                    throw new IllegalArgumentException("badly sized pair");
                }
                this.ordering.addElement(ASN1ObjectIdentifier.getInstance(aSN1Sequence2.getObjectAt(0)));
                ASN1Encodable objectAt = aSN1Sequence2.getObjectAt(1);
                if (!(objectAt instanceof ASN1String) || (objectAt instanceof ASN1UniversalString)) {
                    try {
                        this.values.addElement("#" + bytesToString(Hex.encode(objectAt.toASN1Primitive().getEncoded(ASN1Encoding.DER))));
                    } catch (IOException unused) {
                        throw new IllegalArgumentException("cannot encode value");
                    }
                } else {
                    String string = ((ASN1String) objectAt).getString();
                    if (string.length() <= 0 || string.charAt(0) != '#') {
                        vector = this.values;
                    } else {
                        vector = this.values;
                        string = "\\" + string;
                    }
                    vector.addElement(string);
                }
                this.added.addElement(i4 != 0 ? TRUE : FALSE);
                i4++;
            }
        }
    }

    public X509Name(boolean z9, String str) {
        this(z9, DefaultLookUp, str);
    }

    public X509Name(boolean z9, String str, X509NameEntryConverter x509NameEntryConverter) {
        this(z9, DefaultLookUp, str, x509NameEntryConverter);
    }

    public X509Name(boolean z9, Hashtable hashtable, String str) {
        this(z9, hashtable, str, new X509DefaultEntryConverter());
    }

    public X509Name(boolean z9, Hashtable hashtable, String str, X509NameEntryConverter x509NameEntryConverter) {
        this.converter = null;
        this.ordering = new Vector();
        this.values = new Vector();
        this.added = new Vector();
        this.converter = x509NameEntryConverter;
        X509NameTokenizer x509NameTokenizer = new X509NameTokenizer(str);
        while (x509NameTokenizer.hasMoreTokens()) {
            String nextToken = x509NameTokenizer.nextToken();
            if (nextToken.indexOf(43) > 0) {
                X509NameTokenizer x509NameTokenizer2 = new X509NameTokenizer(nextToken, '+');
                String nextToken2 = x509NameTokenizer2.nextToken();
                Boolean bool = FALSE;
                while (true) {
                    addEntry(hashtable, nextToken2, bool);
                    if (x509NameTokenizer2.hasMoreTokens()) {
                        nextToken2 = x509NameTokenizer2.nextToken();
                        bool = TRUE;
                    }
                }
            } else {
                addEntry(hashtable, nextToken, FALSE);
            }
        }
        if (z9) {
            Vector vector = new Vector();
            Vector vector2 = new Vector();
            Vector vector3 = new Vector();
            int i4 = 1;
            for (int i10 = 0; i10 < this.ordering.size(); i10++) {
                if (((Boolean) this.added.elementAt(i10)).booleanValue()) {
                    vector.insertElementAt(this.ordering.elementAt(i10), i4);
                    vector2.insertElementAt(this.values.elementAt(i10), i4);
                    vector3.insertElementAt(this.added.elementAt(i10), i4);
                    i4++;
                } else {
                    vector.insertElementAt(this.ordering.elementAt(i10), 0);
                    vector2.insertElementAt(this.values.elementAt(i10), 0);
                    vector3.insertElementAt(this.added.elementAt(i10), 0);
                    i4 = 1;
                }
            }
            this.ordering = vector;
            this.values = vector2;
            this.added = vector3;
        }
    }

    private void addEntry(Hashtable hashtable, String str, Boolean bool) {
        X509NameTokenizer x509NameTokenizer = new X509NameTokenizer(str, '=');
        String nextToken = x509NameTokenizer.nextToken();
        if (!x509NameTokenizer.hasMoreTokens()) {
            throw new IllegalArgumentException("badly formatted directory string");
        }
        String nextToken2 = x509NameTokenizer.nextToken();
        this.ordering.addElement(decodeOID(nextToken, hashtable));
        this.values.addElement(unescape(nextToken2));
        this.added.addElement(bool);
    }

    private void appendValue(StringBuffer stringBuffer, Hashtable hashtable, ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        String str2 = (String) hashtable.get(aSN1ObjectIdentifier);
        if (str2 == null) {
            str2 = aSN1ObjectIdentifier.getId();
        }
        stringBuffer.append(str2);
        stringBuffer.append('=');
        int length = stringBuffer.length();
        stringBuffer.append(str);
        int length2 = stringBuffer.length();
        if (str.length() >= 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
            length += 2;
        }
        while (length < length2 && stringBuffer.charAt(length) == ' ') {
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
        while (true) {
            length2--;
            if (length2 <= length || stringBuffer.charAt(length2) != ' ') {
                break;
            }
            stringBuffer.insert(length2, '\\');
        }
        while (length <= length2) {
            char charAt = stringBuffer.charAt(length);
            if (charAt != '\"' && charAt != '\\' && charAt != '+' && charAt != ',') {
                switch (charAt) {
                    case ';':
                    case '<':
                    case '=':
                    case '>':
                        break;
                    default:
                        length++;
                        continue;
                }
            }
            stringBuffer.insert(length, "\\");
            length += 2;
            length2++;
        }
    }

    private String bytesToString(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length];
        for (int i4 = 0; i4 != length; i4++) {
            cArr[i4] = (char) (bArr[i4] & 255);
        }
        return new String(cArr);
    }

    private String canonicalize(String str) {
        String lowerCase = Strings.toLowerCase(str.trim());
        if (lowerCase.length() <= 0 || lowerCase.charAt(0) != '#') {
            return lowerCase;
        }
        ASN1Primitive decodeObject = decodeObject(lowerCase);
        return decodeObject instanceof ASN1String ? Strings.toLowerCase(((ASN1String) decodeObject).getString().trim()) : lowerCase;
    }

    private ASN1ObjectIdentifier decodeOID(String str, Hashtable hashtable) {
        String trim = str.trim();
        if (Strings.toUpperCase(trim).startsWith("OID.")) {
            return new ASN1ObjectIdentifier(trim.substring(4));
        }
        if (trim.charAt(0) < '0' || trim.charAt(0) > '9') {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) hashtable.get(Strings.toLowerCase(trim));
            if (aSN1ObjectIdentifier != null) {
                return aSN1ObjectIdentifier;
            }
            throw new IllegalArgumentException("Unknown object id - " + trim + " - passed to distinguished name");
        }
        return new ASN1ObjectIdentifier(trim);
    }

    private ASN1Primitive decodeObject(String str) {
        try {
            return ASN1Primitive.fromByteArray(Hex.decodeStrict(str, 1, str.length() - 1));
        } catch (IOException e4) {
            throw new IllegalStateException("unknown encoding in name: " + e4);
        }
    }

    private boolean equivalentStrings(String str, String str2) {
        String canonicalize = canonicalize(str);
        String canonicalize2 = canonicalize(str2);
        return canonicalize.equals(canonicalize2) || stripInternalSpaces(canonicalize).equals(stripInternalSpaces(canonicalize2));
    }

    public static X509Name getInstance(Object obj) {
        if (obj instanceof X509Name) {
            return (X509Name) obj;
        }
        if (obj instanceof X500Name) {
            return new X509Name(ASN1Sequence.getInstance(((X500Name) obj).toASN1Primitive()));
        }
        if (obj != null) {
            return new X509Name(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static X509Name getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z9) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, z9));
    }

    private String stripInternalSpaces(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            stringBuffer.append(charAt);
            int i4 = 1;
            while (i4 < str.length()) {
                char charAt2 = str.charAt(i4);
                if (charAt != ' ' || charAt2 != ' ') {
                    stringBuffer.append(charAt2);
                }
                i4++;
                charAt = charAt2;
            }
        }
        return stringBuffer.toString();
    }

    private String unescape(String str) {
        int i4;
        if (str.length() == 0 || (str.indexOf(92) < 0 && str.indexOf(34) < 0)) {
            return str.trim();
        }
        char[] charArray = str.toCharArray();
        StringBuffer stringBuffer = new StringBuffer(str.length());
        if (charArray[0] == '\\' && charArray[1] == '#') {
            i4 = 2;
            stringBuffer.append("\\#");
        } else {
            i4 = 0;
        }
        boolean z9 = false;
        int i10 = 0;
        boolean z10 = false;
        boolean z11 = false;
        while (i4 != charArray.length) {
            char c10 = charArray[i4];
            if (c10 != ' ') {
                z11 = true;
            }
            if (c10 != '\"') {
                if (c10 == '\\' && !z9 && !z10) {
                    i10 = stringBuffer.length();
                    z9 = true;
                } else if (c10 == ' ' && !z9 && !z11) {
                }
                i4++;
            } else if (!z9) {
                z10 = !z10;
                z9 = false;
                i4++;
            }
            stringBuffer.append(c10);
            z9 = false;
            i4++;
        }
        if (stringBuffer.length() > 0) {
            while (stringBuffer.charAt(stringBuffer.length() - 1) == ' ' && i10 != stringBuffer.length() - 1) {
                stringBuffer.setLength(stringBuffer.length() - 1);
            }
        }
        return stringBuffer.toString();
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public boolean equals(Object obj) {
        int i4;
        int i10;
        boolean z9;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof X509Name) || (obj instanceof ASN1Sequence)) {
            if (toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive())) {
                return true;
            }
            try {
                X509Name x509Name = getInstance(obj);
                int size = this.ordering.size();
                if (size != x509Name.ordering.size()) {
                    return false;
                }
                boolean[] zArr = new boolean[size];
                int i11 = -1;
                if (this.ordering.elementAt(0).equals(x509Name.ordering.elementAt(0))) {
                    i11 = size;
                    i4 = 0;
                    i10 = 1;
                } else {
                    i4 = size - 1;
                    i10 = -1;
                }
                while (i4 != i11) {
                    ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) this.ordering.elementAt(i4);
                    String str = (String) this.values.elementAt(i4);
                    int i12 = 0;
                    while (true) {
                        if (i12 >= size) {
                            z9 = false;
                            break;
                        } else if (!zArr[i12] && aSN1ObjectIdentifier.equals((ASN1Primitive) ((ASN1ObjectIdentifier) x509Name.ordering.elementAt(i12))) && equivalentStrings(str, (String) x509Name.values.elementAt(i12))) {
                            zArr[i12] = true;
                            z9 = true;
                            break;
                        } else {
                            i12++;
                        }
                    }
                    if (!z9) {
                        return false;
                    }
                    i4 += i10;
                }
                return true;
            } catch (IllegalArgumentException unused) {
                return false;
            }
        }
        return false;
    }

    public boolean equals(Object obj, boolean z9) {
        if (z9) {
            if (obj == this) {
                return true;
            }
            if ((obj instanceof X509Name) || (obj instanceof ASN1Sequence)) {
                if (toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive())) {
                    return true;
                }
                try {
                    X509Name x509Name = getInstance(obj);
                    int size = this.ordering.size();
                    if (size != x509Name.ordering.size()) {
                        return false;
                    }
                    for (int i4 = 0; i4 < size; i4++) {
                        if (!((ASN1ObjectIdentifier) this.ordering.elementAt(i4)).equals((ASN1Primitive) ((ASN1ObjectIdentifier) x509Name.ordering.elementAt(i4))) || !equivalentStrings((String) this.values.elementAt(i4), (String) x509Name.values.elementAt(i4))) {
                            return false;
                        }
                    }
                    return true;
                } catch (IllegalArgumentException unused) {
                    return false;
                }
            }
            return false;
        }
        return equals(obj);
    }

    public Vector getOIDs() {
        Vector vector = new Vector();
        for (int i4 = 0; i4 != this.ordering.size(); i4++) {
            vector.addElement(this.ordering.elementAt(i4));
        }
        return vector;
    }

    public Vector getValues() {
        Vector vector = new Vector();
        for (int i4 = 0; i4 != this.values.size(); i4++) {
            vector.addElement(this.values.elementAt(i4));
        }
        return vector;
    }

    public Vector getValues(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        Vector vector = new Vector();
        for (int i4 = 0; i4 != this.values.size(); i4++) {
            if (this.ordering.elementAt(i4).equals(aSN1ObjectIdentifier)) {
                String str = (String) this.values.elementAt(i4);
                if (str.length() > 2 && str.charAt(0) == '\\' && str.charAt(1) == '#') {
                    str = str.substring(1);
                }
                vector.addElement(str);
            }
        }
        return vector;
    }

    @Override // org.bouncycastle.asn1.ASN1Object
    public int hashCode() {
        if (this.isHashCodeCalculated) {
            return this.hashCodeValue;
        }
        this.isHashCodeCalculated = true;
        for (int i4 = 0; i4 != this.ordering.size(); i4++) {
            String stripInternalSpaces = stripInternalSpaces(canonicalize((String) this.values.elementAt(i4)));
            int hashCode = this.hashCodeValue ^ this.ordering.elementAt(i4).hashCode();
            this.hashCodeValue = hashCode;
            this.hashCodeValue = stripInternalSpaces.hashCode() ^ hashCode;
        }
        return this.hashCodeValue;
    }

    @Override // org.bouncycastle.asn1.ASN1Object, org.bouncycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        DERSequence dERSequence;
        if (this.seq == null) {
            ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            ASN1ObjectIdentifier aSN1ObjectIdentifier = null;
            int i4 = 0;
            while (i4 != this.ordering.size()) {
                ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector(2);
                ASN1ObjectIdentifier aSN1ObjectIdentifier2 = (ASN1ObjectIdentifier) this.ordering.elementAt(i4);
                aSN1EncodableVector3.add(aSN1ObjectIdentifier2);
                aSN1EncodableVector3.add(this.converter.getConvertedValue(aSN1ObjectIdentifier2, (String) this.values.elementAt(i4)));
                if (aSN1ObjectIdentifier == null || ((Boolean) this.added.elementAt(i4)).booleanValue()) {
                    dERSequence = new DERSequence(aSN1EncodableVector3);
                } else {
                    aSN1EncodableVector.add(new DERSet(aSN1EncodableVector2));
                    aSN1EncodableVector2 = new ASN1EncodableVector();
                    dERSequence = new DERSequence(aSN1EncodableVector3);
                }
                aSN1EncodableVector2.add(dERSequence);
                i4++;
                aSN1ObjectIdentifier = aSN1ObjectIdentifier2;
            }
            aSN1EncodableVector.add(new DERSet(aSN1EncodableVector2));
            this.seq = new DERSequence(aSN1EncodableVector);
        }
        return this.seq;
    }

    public String toString() {
        return toString(DefaultReverse, DefaultSymbols);
    }

    public String toString(boolean z9, Hashtable hashtable) {
        StringBuffer stringBuffer = new StringBuffer();
        Vector vector = new Vector();
        StringBuffer stringBuffer2 = null;
        for (int i4 = 0; i4 < this.ordering.size(); i4++) {
            if (((Boolean) this.added.elementAt(i4)).booleanValue()) {
                stringBuffer2.append('+');
                appendValue(stringBuffer2, hashtable, (ASN1ObjectIdentifier) this.ordering.elementAt(i4), (String) this.values.elementAt(i4));
            } else {
                stringBuffer2 = new StringBuffer();
                appendValue(stringBuffer2, hashtable, (ASN1ObjectIdentifier) this.ordering.elementAt(i4), (String) this.values.elementAt(i4));
                vector.addElement(stringBuffer2);
            }
        }
        boolean z10 = true;
        if (z9) {
            for (int size = vector.size() - 1; size >= 0; size--) {
                if (z10) {
                    z10 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(size).toString());
            }
        } else {
            for (int i10 = 0; i10 < vector.size(); i10++) {
                if (z10) {
                    z10 = false;
                } else {
                    stringBuffer.append(',');
                }
                stringBuffer.append(vector.elementAt(i10).toString());
            }
        }
        return stringBuffer.toString();
    }
}
